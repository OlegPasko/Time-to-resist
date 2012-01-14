class RemoveStatusFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :status
  end

  def down
  end
end
