class User < ActiveRecord::Base
  default_scope :order => 'email ASC'
  
  has_secure_password
  validates_presence_of :password, :on => :create, :message => "Can't be blank"
  validates_presence_of :email 
  validates_presence_of :name
  validates_presence_of :mission_id
  validates_presence_of :character_id
  validates_presence_of :profession_id
  validates_presence_of :city_id
  validates_presence_of :level
  validates_presence_of :maxhealth
  validates_presence_of :craft
  validates_uniqueness_of :email
  validates_inclusion_of :level, :in => 0..120,
             :message => "Nononono"
  validates_inclusion_of :maxhealth, :in => 0..20000,
             :message => "Nononono"
  validates_inclusion_of :craft, :in => 0..650,
             :message => "Nononono"
  
  has_one    :mission
  has_one    :character
  has_one    :profession
  has_one    :city
  belongs_to :mission     # foreign key - mission_id
  belongs_to :character     # foreign key - character_id
  belongs_to :profession     # foreign key - profession_id
  belongs_to :city     # foreign key - city_id
  
  has_many :rewards, :dependent => :destroy 
  has_many :funds, :dependent => :destroy 
  has_many :plushkis, :dependent => :destroy 
  has_many :walls, :dependent => :destroy 
  has_many :tenders, :dependent => :destroy 
end
