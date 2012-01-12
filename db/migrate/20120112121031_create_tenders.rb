class CreateTenders < ActiveRecord::Migration
  def change
    create_table :tenders do |t|
      t.string :img
      t.string :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
