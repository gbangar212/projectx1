require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get dashboard_home_url
    assert_response :success
  end

  test "should get approve" do
    get dashboard_approve_url
    assert_response :success
  end

  test "should get authorize" do
    get dashboard_authorize_url
    assert_response :success
  end

end
