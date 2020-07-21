require 'test_helper'

class Api::V1::HelthCheckControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_helth_check_show_url
    assert_response :success
  end

end
