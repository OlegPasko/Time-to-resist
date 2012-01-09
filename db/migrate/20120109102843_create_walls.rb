class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.integer :user_id
      t.string :post

      t.timestamps
    end
  end
end
