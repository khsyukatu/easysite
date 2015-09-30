class Admin::TopimagesController < ApplicationController
  before_action :authenticate_site!
  before_action :set_topimage, only: [:show, :edit, :update, :destroy]
  
  def index
    @topimage = Topimage.where(site_id: current_site.id).last
  end
  
  def show
  end
  
  def new
  	@topimage = current_site.build_topimage
  end

  def create
    @topimage = current_site.build_topimage(topimage_params)
    if @topimage.save
      flash[:success] = "作成しました"
      redirect_to admin_topimages_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if @topimage.update(topimage_params)
      flash[:success] = "編集しました"
      redirect_to admin_topimages_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
  end

  def destroy
    @topimage.destroy
    flash[:success] = "削除しました"
    redirect_to admin_root_path
  end
  
  private
  def set_topimage
    @topimage = Topimage.where(site_id: current_site.id).find(params[:id])
  end
  
  def topimage_params
    params.require(:topimage).permit(:image, :head_text, :title, :image_type, :site_id)
  end
end
