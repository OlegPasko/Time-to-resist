class Prize < ActiveRecord::Base
  has_many :rewards
  validates_presence_of :title
end
