class Admin::MapsController < ApplicationController
  before_action :authenticate_site!
  before_action :set_map, only: [:show, :edit, :update, :destroy]
  
  def index
    @map = Map.where(site_id: current_site.id).last
  end
  
  def show
  end
  
  def new
  	@map = current_site.build_map
  end

  def create
    @map = current_site.build_map(map_params)
    if@map.save
      flash[:success] = "作成しました"
      redirect_to admin_maps_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if@map.update(map_params)
      flash[:success] = "編集しました"
      redirect_to admin_maps_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
  end

  def destroy
    @map.destroy
    flash[:success] = "削除しました"
    redirect_to admin_maps_path
  end
  
  private
  def set_map
    @map = Map.where(site_id: current_site.id).find(params[:id])
  end
  
  def map_params
    params.require(:map).permit(:body, :site_id)
  end
end
