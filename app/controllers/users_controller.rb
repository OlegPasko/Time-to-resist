# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  before_filter :correct_user, :only => [:edit, :update]
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Зарегились, отличненько! Теперь можно войти."
    else
      render "new"
    end
  end
  def edit
    @user = User.find(params[:id])
  end
   def update
    @user = User.find(params[:id])
    
     respond_to do |format|
        if @user.update_attributes(params[:user])
          format.html { redirect_to edit_user_path(current_user), :notice => 'Данные обновлены.' }
        else
          render 'edit'
        end
     end
  end
    private

    def authenticate
      redirect_to(root_path) unless !current_user.nil?
    end
    def correct_user
      redirect_to(root_path) unless current_user == User.find(params[:id])
    end
end
