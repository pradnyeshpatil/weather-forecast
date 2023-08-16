require 'http'

class OpenWeatherApi
  BASE_URI = "https://api.openweathermap.org/data/2.5/weather"
  OPEN_WEATHER_API_KEY = "f88265ec4124675bbe65b83f8db4f32a"

  def initialize(params = {})
    @params = params
    @headers = { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
  end

  def get_weather
    url = "#{BASE_URI}?q=#{@params['city_name']}&APPID=#{OPEN_WEATHER_API_KEY}&units=metric"
    response = HTTP.get(url)
    JSON.parse(response.body)
  end
end