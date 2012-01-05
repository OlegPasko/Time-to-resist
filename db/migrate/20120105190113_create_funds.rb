class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.integer :taction, :default => 0
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end
end
