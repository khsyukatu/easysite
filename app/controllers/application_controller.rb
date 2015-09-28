class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :set_layout
  
  #layoutの設定
  def set_layout
    if request.url =~ %r!/admin! #adminで管理画面にアクセスした場合
      return 'admin'
    elsif request.subdomain.present? && request.subdomain != 'techacademy-khsyukatu' #'www'に変更すること  #サブドメインでアクセスした場合
      @site = Site.friendly.find(request.subdomain)
      puts @site.design_template if @site.design_template.present? #design_templateが存在しない場合はdefault
    elsif request.url =~ %r!/sites! #adminで管理画面にアクセスした場合
      #@site = Site.find(params[:id])
      #puts @site.design_template if @site.design_template.present? #design_templateが存在しない場合はdefault
    end
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :site_name
    devise_parameter_sanitizer.for(:account_update) << :site_name
  end
end
