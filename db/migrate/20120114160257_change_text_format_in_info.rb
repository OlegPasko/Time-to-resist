class ChangeTextFormatInInfo < ActiveRecord::Migration
  def up
    change_column :infos, :text, :text
  end

  def down
    change_column :infos, :text, :string
  end
end
