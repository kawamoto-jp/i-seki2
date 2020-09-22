require 'test_helper'

class UserInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_infos_index_url
    assert_response :success
  end

end
