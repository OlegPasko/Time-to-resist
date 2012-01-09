class Wall < ActiveRecord::Base
  default_scope :order => 'created_at DESC'
  
  validates_presence_of :post
  validates_presence_of :user_id
  
  has_one    :user
  belongs_to :user   # foreign key - user_id
  
  validates_length_of :post, :maximum => 300
end
