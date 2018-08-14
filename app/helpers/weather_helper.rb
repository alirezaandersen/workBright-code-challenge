module WeatherHelper


  WEATHER = ['windy', 'cloudy', 'mostly cloudy', 'partly cloudy', 'clear', 'sunny', 'fair', 'hot']

  def self.tubing_outcomes
    @results = fetch_weather
  end

private

  def self.fetch_weather
    JSON.parse(RestClient.get("https://boulder-tubing-api.herokuapp.com/conditions"))
  end

end
