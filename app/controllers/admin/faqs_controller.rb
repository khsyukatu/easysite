class Admin::FaqsController < ApplicationController
  before_action :authenticate_site!
  before_action :set_faq, only: [:show, :edit, :update, :destroy]
  
  def index
    @faqs = Faq.where(site_id: current_site.id)
  end
  
  def show
  end
  
  def new
  	@faq = current_site.faqs.build
  end

  def create
    @faq = current_site.faqs.build(faq_params)
    if@faq.save
      flash[:success] = "作成しました"
      redirect_to admin_faqs_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if@faq.update(faq_params)
      flash[:success] = "編集しました"
      redirect_to admin_faqs_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
  end

  def destroy
    @faq.destroy
    flash[:success] = "削除しました"
    redirect_to admin_faqs_path
  end
  
  private
  def set_faq
    @faq = Faq.where(site_id: current_site.id).find(params[:id])
  end
  
  def faq_params
    params.require(:faq).permit(:title, :body, :site_id)
  end
end
