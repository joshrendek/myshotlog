class AddTargetImageToRangeDays < ActiveRecord::Migration
  def self.up
    add_column :range_days, :target_image, :string
    add_column :range_days, :target_groups, :text
  end

  def self.down
    remove_column :range_days, :target_groups
    remove_column :range_days, :target_image
  end
end
