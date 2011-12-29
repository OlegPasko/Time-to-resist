class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :discription
      t.string :rightvideo
      t.string :righttext
      t.string :wrongvideo
      t.string :wrongtext

      t.timestamps
    end
  end
end
