class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller? 
  
  protected
  #Authorize variable fullname for devise module to sign up and update profile
    def configure_permitted parameters
      devise_parameter.sanitizer.permit(:sign_up, keys: [:fullname])
      devise_parameter.sanitizer.permit(:account_update, keys: [:fullname])
    end
end
