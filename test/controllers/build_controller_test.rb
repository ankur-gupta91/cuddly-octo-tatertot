require 'test_helper'

class BuildControllerTest < ActionController::TestCase
  test "should get download" do
    get :download
    assert_response :success
  end

  test "should get load" do
    get :load
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
