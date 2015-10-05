class SitesController < ApplicationController
  def show
    @site = Site.friendly.find(params[:id])
    
    @topimage = @site.topimage
    @service = @site.service
    @members = @site.members
    @articles = @site.articles.order("created_at desc").limit(3)
    
  end
end
