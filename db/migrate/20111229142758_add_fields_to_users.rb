class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :character_id, :integer
    add_column :users, :profession_id, :integer
    add_column :users, :level, :integer
    add_column :users, :city, :string
    add_column :users, :maxhealth, :integer
    add_column :users, :mission_id, :integer
    add_column :users, :zr, :boolean
    add_column :users, :craft, :integer
  end
end
