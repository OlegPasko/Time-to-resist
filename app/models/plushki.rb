class Plushki < ActiveRecord::Base
      validates_presence_of :sum
    validates_presence_of :user_id

  has_one    :user
  belongs_to :user   # foreign key - user_id
end
