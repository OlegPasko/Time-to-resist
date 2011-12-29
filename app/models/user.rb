class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create, :message => "Can't be blank"
  validates_presence_of :email 
  validates_presence_of :name
  validates_presence_of :mission_id
  validates_presence_of :character_id
  validates_presence_of :profession_id
  validates_presence_of :city_id
  validates_uniqueness_of :email
  
  
  
  has_one    :mission
  has_one    :character
  has_one    :profession
  has_one    :city
  belongs_to :mission     # foreign key - mission_id
  belongs_to :character     # foreign key - character_id
  belongs_to :profession     # foreign key - profession_id
  belongs_to :city     # foreign key - city_id
end
