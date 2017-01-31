require 'test_helper'

class SessionInterviewerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get session_interviewer_new_url
    assert_response :success
  end

  test "should get create" do
    get session_interviewer_create_url
    assert_response :success
  end

  test "should get destroy" do
    get session_interviewer_destroy_url
    assert_response :success
  end

end
