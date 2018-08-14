class TubingConditionsController < ApplicationController

  def index
    @results = WeatherHelper.tubing_outcomes
  end

end
