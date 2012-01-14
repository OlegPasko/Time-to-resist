class AddStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :status, :boolean, :default => 1
  end
end
