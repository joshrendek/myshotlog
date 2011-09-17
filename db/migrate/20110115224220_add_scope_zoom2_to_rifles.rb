class AddScopeZoom2ToRifles < ActiveRecord::Migration
  def self.up
    add_column :rifles, :scope_zoom2, :integer
  end

  def self.down
    remove_column :rifles, :scope_zoom2
  end
end
