class AddStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :status, :boolean, :default => true
  end
end
