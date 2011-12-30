class Reward < ActiveRecord::Base
  has_one    :prize
  belongs_to :prize, :dependent => :destroy   # foreign key - prize_id
  
  has_one    :user
  belongs_to :user, :dependent => :destroy   # foreign key - user_id
end
