class Reward < ActiveRecord::Base
  has_one    :prize
  belongs_to :prize   # foreign key - prize_id
  
  has_one    :user
  belongs_to :user   # foreign key - user_id
end
