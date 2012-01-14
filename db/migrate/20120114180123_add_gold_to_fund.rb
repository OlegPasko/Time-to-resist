class AddGoldToFund < ActiveRecord::Migration
  def change
    add_column :funds, :gold, :integer, :default => 0
  end
end
