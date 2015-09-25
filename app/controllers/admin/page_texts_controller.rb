class Admin::PageTextsController < ApplicationController
  before_action :authenticate_site!
  before_action :set_page_text, only: [:show, :edit, :update, :destroy]
  
  def new
  	@page_text = @page.page_texts.build
  end

  def create
    @page = Page.find(params[:page_id])
    @page_text = @page.page_texts.build(page_text_params)
    if@page_text.save
      flash[:success] = "作成しました"
    else
      flash[:errors] = "作成できませんでした"
    end
  end
  
  def update
    if@page_text.update(page_text_params)
      flash[:success] = "編集しました"
      redirect_to admin_pages_path
    else
      flash[:errors] = "編集できませんでした"
      render :back
    end
  end

  def edit
  end

  def destroy
    @page_text.destroy
    flash[:success] = "削除しました"
    redirect_to admin_root_path
  end
  
  private
  def set_page_text
    @page_text = PageImage.where(site_id: @page.id).find(params[:id])
  end
  
  def page_text_params
    params.require(:page_text).permit(:title, :body, :page_id)
  end
end
