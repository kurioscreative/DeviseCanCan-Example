class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization :unless => :devise_controller?
  
  #CanCan redirect
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end  
  
end
