require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get get_weather" do
    get home_get_weather_url
    assert_response :success
  end

end
