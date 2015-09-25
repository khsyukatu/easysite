class Admin::PageImagesController < ApplicationController
  before_action :authenticate_site!
  before_action :set_page_image, only: [:show, :edit, :update, :destroy]
  
  def new
  	@page_image = @page.page_images.build
  end

  def create
    @page_image = @page.page_images.build(page_image_params)
    if@page_image.save
      flash[:success] = "作成しました"
      redirect_to admin_page_images_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if@page_image.update(page_image_params)
      flash[:success] = "編集しました"
      redirect_to admin_page_images_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end

  def edit
  end

  def destroy
    @page_image.destroy
    flash[:success] = "削除しました"
    redirect_to admin_root_path
  end
  
  private
  def set_page_image
    @page_image = PageImage.where(site_id: @page.id).find(params[:id])
  end
  
  def page_image_params
    params.require(:page_image).permit(:image, :title, :head_text, :page_id, :image_type)
  end
end
