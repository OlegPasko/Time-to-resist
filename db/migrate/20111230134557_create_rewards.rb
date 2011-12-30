class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :user_id
      t.integer :prize_id
      t.string :text

      t.timestamps
    end
  end
end
