class Prize < ActiveRecord::Base
  has_many :rewards, :dependent => :destroy
  validates_presence_of :title
  validates_presence_of :image
end
