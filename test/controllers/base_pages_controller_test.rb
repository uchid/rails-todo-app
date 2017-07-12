require 'test_helper'

class BasePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get base_pages_home_url
    assert_response :success
  end

end
