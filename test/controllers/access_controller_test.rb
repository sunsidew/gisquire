require 'test_helper'

class AccessControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get not_allow" do
    get :not_allow
    assert_response :success
  end

end
