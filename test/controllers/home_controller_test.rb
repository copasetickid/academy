require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get lander" do
    get :lander
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
