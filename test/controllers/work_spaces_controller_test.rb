require 'test_helper'

class WorkSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get work_spaces_show_url
    assert_response :success
  end

end
