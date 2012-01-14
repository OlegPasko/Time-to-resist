class Fund < ActiveRecord::Base
    validates_presence_of :taction
    validates_presence_of :gold
    validates_presence_of :user_id

  has_one    :user
  belongs_to :user   # foreign key - user_id
end
