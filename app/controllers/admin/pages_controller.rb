class Admin::PagesController < ApplicationController
  before_action :authenticate_site!
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  
  def index
    @pages = Page.where(site_id: current_site.id)
  end
  
  def show
  end
  
  def new
  	@page = current_site.pages.build
  end

  def create
    @page = current_site.pages.build(page_params)
    if@page.save
      flash[:success] = "作成しました"
      redirect_to admin_pages_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if@page.update(page_params)
      flash[:success] = "編集しました"
      redirect_to admin_pages_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
  end

  def destroy
    @page.destroy
    flash[:success] = "削除しました"
    redirect_to admin_root_path
  end
  
  private
  def set_page
    @page = Page.where(site_id: current_site.id).find(params[:id])
  end
  
  def page_params
    params.require(:page).permit(:name, :site_id)
  end
end
