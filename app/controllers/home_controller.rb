class HomeController < ApplicationController
  def get_weather
    data =  OpenWeatherApi.new(params).get_weather
    if data['message'].blank?
      @temp = data['main']['temp']
      @city = data['name']
    else
      @error = data['message']
    end
  end
end


