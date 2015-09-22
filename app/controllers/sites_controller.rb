class SitesController < ApplicationController
  def show
    if request.subdomain.present? && request.subdomain != ('www' or 'techacademy-khsyukatu')
      @site = Site.friendly.find(request.subdomain)
    else
      @site = Site.find(params[:id])
    end
  end
end
