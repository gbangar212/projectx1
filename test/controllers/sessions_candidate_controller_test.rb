require 'test_helper'

class SessionsCandidateControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_candidate_new_url
    assert_response :success
  end

  test "should get create" do
    get sessions_candidate_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sessions_candidate_destroy_url
    assert_response :success
  end

end
