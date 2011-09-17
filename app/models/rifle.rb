class Rifle < ActiveRecord::Base
  attr_accessible :name, :caliber, :barrel_length, :model, :action_type, :twist, :scope_name, :scope_model, :scope_zoom,
                  :scope_aperture, :reticle_type, :scope_zoom2

  has_many :range_days

  def average_accuracy
    ts = 0
    tsop = 0
    self.range_days.each do |r| 
      ts += r.shots_fired
      tsop += r.shots_on_paper
    end
    (tsop.to_f/ts.to_f)*100
  end

  def total_shots
    x = 0
    self.range_days.each do |r| 
      x += r.shots_fired 
    end
    x
  end
end
