class CreatePlushkis < ActiveRecord::Migration
  def change
    create_table :plushkis do |t|
      t.integer :user_id
      t.integer :sum
      t.text :comment

      t.timestamps
    end
  end
end
