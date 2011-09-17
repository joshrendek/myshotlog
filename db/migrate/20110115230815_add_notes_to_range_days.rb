class AddNotesToRangeDays < ActiveRecord::Migration
  def self.up
    add_column :range_days, :notes, :text
  end

  def self.down
    remove_column :range_days, :notes
  end
end
