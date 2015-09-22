class Admin::ServicesController < ApplicationController
  before_action :authenticate_site!
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  
  def index
    @service = Service.where(site_id: current_site.id).first
  end
  
  def show
  end
  
  def new
  	@service = current_site.build_service
  end

  def create
    @service = current_site.build_service(service_params)
    if @service.save
      flash[:success] = "作成しました"
      redirect_to admin_services_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if @service.update(service_params)
      flash[:success] = "編集しました"
      redirect_to admin_services_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
  end

  def destroy
    @service.destroy
    flash[:success] = "削除しました"
    redirect_to admin_root_path
  end
  
  private
  def set_service
    @service = Service.where(site_id: current_site.id).find(params[:id])
  end
  
  def service_params
    params.require(:service).permit(:image, :head_text, :title, :image_type, :site_id)
  end
end