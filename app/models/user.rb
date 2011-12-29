class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create, :message => "Can't be blank"
  validates_presence_of :email 
  validates_presence_of :name
  validates_uniqueness_of :email
  
  
  
  has_one    :mission
  has_one    :character
  has_one    :profession
  has_one    :city
end
