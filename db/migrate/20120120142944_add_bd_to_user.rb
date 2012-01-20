class AddBdToUser < ActiveRecord::Migration
  def change
    add_column :users, :bd, :date
  end
end
