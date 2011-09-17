class CreateRangeDays < ActiveRecord::Migration
  def self.up
    create_table :range_days do |t|
      t.integer :rifle_id
      t.integer :user_id
      t.integer :shots_fired
      t.integer :shots_on_paper
      t.integer :temperature
      t.integer :humidity
      t.integer :wind_speed
      t.string :wind_direction
      t.datetime :shots_taken_at
      t.integer :range

      t.timestamps
    end
  end

  def self.down
    drop_table :range_days
  end
end
