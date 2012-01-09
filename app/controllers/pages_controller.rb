# -*- encoding : utf-8 -*-
class PagesController < ApplicationController
  def home
    @users = User.all
    @lastusers = User.find(:all, :order => "created_at DESC", :limit => 14)
    @lastrewards = Reward.find(:all, :order => "created_at DESC", :limit => 7)
    @walls = Wall.limit(15)
  end
  
  def gallery
    @useravas = User.where("length(users.avatar) > 10").sort_by{ rand }
  end
  
end
