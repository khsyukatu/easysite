class Admin::DashboardController < ApplicationController
  before_action :authenticate_site!
  def index
  end
end
