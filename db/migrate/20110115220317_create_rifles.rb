class CreateRifles < ActiveRecord::Migration
  def self.up
    create_table :rifles do |t|
      t.string :name
      t.float :caliber
      t.integer :barrel_length
      t.string :model
      t.string :action_type
      t.integer :twist
      t.integer :user_id
      t.string :scope_name
      t.integer :scope_model
      t.integer :scope_zoom
      t.integer :scope_aperture
      t.string :reticle_type

      t.timestamps
    end
  end

  def self.down
    drop_table :rifles
  end
end
