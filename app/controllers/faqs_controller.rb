class FaqsController < ApplicationController
  def index
    @site = Site.friendly.find(params[:site_id])
    @faqs = @site.faqs.order("created_at desc")
  end
end
