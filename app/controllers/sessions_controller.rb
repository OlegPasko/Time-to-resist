# -*- encoding : utf-8 -*-
class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Вошли!"
    else
      flash.now.alert = "Неверный ник или пароль :("
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Вышли!"
  end
end
