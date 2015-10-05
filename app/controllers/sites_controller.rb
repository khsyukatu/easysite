class SitesController < ApplicationController
  def show
    if request.subdomain.present? && request.subdomain != 'techacademy-khsyukatu' #'www'に変更すること
      @site = Site.friendly.find(request.subdomain)
    else
      @site = Site.friendly.find(params[:id])
    end
    
    @topimage = @site.topimage
    @service = @site.service
    @members = @site.members
    @articles = @site.articles.order("created_at desc").limit(3)
    
  end
end
