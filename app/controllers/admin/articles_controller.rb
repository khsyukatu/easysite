class Admin::ArticlesController < ApplicationController
  before_action :authenticate_site!
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  
  def index
    @articles = Article.where(site_id: current_site.id)
  end
  
  def show
  end
  
  def new
  	@article = current_site.articles.build
  end

  def create
    @article = current_site.articles.build(article_params)
    if@article.save
      flash[:success] = "作成しました"
      redirect_to admin_articles_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if@article.update(article_params)
      flash[:success] = "編集しました"
      redirect_to admin_articles_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
  end

  def destroy
    @article.destroy
    flash[:success] = "削除しました"
    redirect_to admin_articles_path
  end
  
  private
  def set_article
    @article = Article.where(site_id: current_site.id).find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :body, :site_id)
  end
end
