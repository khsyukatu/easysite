class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :set_layout
  
  #layoutの設定
  def set_layout #layoutシステムは今後しっかりと構築する必要がある
    if request.url =~ %r!/admin! #adminで管理画面にアクセスした場合
      return 'admin'
    else
      return "application"
    end
  end
  
  def after_sign_in_path_for(resource)
    admin_root_path
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :site_name
    devise_parameter_sanitizer.for(:account_update) << :site_name
  end
end
