# -*- encoding : utf-8 -*-
class PagesController < ApplicationController
  def home
    @users = User.all
  end
end
