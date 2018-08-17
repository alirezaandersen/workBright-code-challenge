module WeatherHelper

  MINTEMP = 85
  MINCFS = 40
  MAXCFS = 300
  WEATHER = ['windy', 'cloudy', 'mostly cloudy', 'partly cloudy', 'clear', 'sunny', 'fair', 'hot']

  def self.tubing_outcomes
    if temperature && conditions && river_flow
      @results = "LETS GO TUBING"
    else
      @results = "Weather ain't that great"
    end
  end

  private

  def self.fetch_weather
    JSON.parse(RestClient.get("https://boulder-tubing-api.herokuapp.com/conditions"))
  end

  def self.temperature
    fetch_weather["temperature_f"].to_i > MINTEMP
  end

  def self.conditions
    cond = fetch_weather["weather_condition"]
    WEATHER.any? { |word| cond.include?(word) }
  end

  def self.river_flow
    cfs = fetch_weather["flow_rate_cfs"].to_i
    cfs > MINCFS && cfs < MAXCFS
  end

end
