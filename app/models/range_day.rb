class RangeDay < ActiveRecord::Base
  belongs_to :rifle
  attr_accessible :rifle_id, :shots_fired, :shots_on_paper, :temperature, :humidity, :wind_speed, :wind_direction, :shots_taken_at, :range, :name, :notes, :target_image, :target_groups
end
