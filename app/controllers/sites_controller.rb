class SitesController < ApplicationController
  def show
    if request.subdomain.present? && request.subdomain != 'techacademy-khsyukatu' #'www'に変更すること
      @site = Site.friendly.find(request.subdomain)
    else
      @site = Site.find(params[:id])
    end
  end
end
