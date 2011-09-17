class AddNameToRangeDays < ActiveRecord::Migration
  def self.up
    add_column :range_days, :name, :string
  end

  def self.down
    remove_column :range_days, :name
  end
end
