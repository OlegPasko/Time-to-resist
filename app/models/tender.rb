class Tender < ActiveRecord::Base
  validates_length_of :img, :minimum => 10
  validates_presence_of :img
  
  validates_length_of :comment, :maximum => 300
  
  has_one    :user
  belongs_to :user   # foreign key - user_id
end
