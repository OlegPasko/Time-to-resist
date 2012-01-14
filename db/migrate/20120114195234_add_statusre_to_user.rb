class AddStatusreToUser < ActiveRecord::Migration
  def up
    add_column :users, :status, :boolean, :default => true
  end
end
