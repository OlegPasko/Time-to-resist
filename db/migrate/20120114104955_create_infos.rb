class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :text
      t.integer :location, :default => 1

      t.timestamps
    end
  end
end
