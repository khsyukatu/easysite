class ArticlesController < ApplicationController
  def index
    @site = Site.friendly.find(params[:site_id])
    @articles = @site.articles.order("created_at desc")
  end
  
  def show
    @site = Site.friendly.find(params[:site_id])
    @article = Article.find(params[:id])
  end
end
