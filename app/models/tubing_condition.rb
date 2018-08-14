class TubingCondition < ActiveRecord::Base

  validates_presence_of :weather_condition, :temperature_f, flow_rate_cfs

end
