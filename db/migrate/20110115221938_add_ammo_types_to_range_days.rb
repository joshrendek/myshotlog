class AddAmmoTypesToRangeDays < ActiveRecord::Migration
  def self.up
    add_column :range_days, :ammo_name, :string
    add_column :range_days, :ammo_weight, :integer
    add_column :range_days, :ammo_type, :string
  end

  def self.down
    remove_column :range_days, :ammo_type
    remove_column :range_days, :ammo_weight
    remove_column :range_days, :ammo_name
  end
end
