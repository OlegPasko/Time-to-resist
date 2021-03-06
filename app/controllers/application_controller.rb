# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def admin_user
    current_user && (current_user.id == 2 or current_user.id == 14)
  end
  helper_method :current_user
  helper_method :admin_user
end
