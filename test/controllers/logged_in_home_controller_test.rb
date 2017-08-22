require 'test_helper'

class LoggedInHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logged_in_home_index_url
    assert_response :success
  end

end
