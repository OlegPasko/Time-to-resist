class Prize < ActiveRecord::Base
  has_many :rewards
  validates_presence_of :title
  validates_presence_of :image
end
