require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about_college" do
    get :about_college
    assert_response :success
  end

  test "should get about_anugoonj" do
    get :about_anugoonj
    assert_response :success
  end

  test "should get coordinators" do
    get :coordinators
    assert_response :success
  end

  test "should get intra_college_events" do
    get :intra_college_events
    assert_response :success
  end

end
