require 'test_helper'

class CandidatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get candidates_url
    assert_response :success
  end

  test "should get new" do
    get new_candidate_url
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post candidates_url, params: { candidate: { email_id: @candidate.email_id, linkedin_url: @candidate.linkedin_url, name: @candidate.name, password: 'secret', password_confirmation: 'secret', skype_id: @candidate.skype_id, tel_no: @candidate.tel_no } }
    end

    assert_redirected_to candidate_url(Candidate.last)
  end

  test "should show candidate" do
    get candidate_url(@candidate)
    assert_response :success
  end

  test "should get edit" do
    get edit_candidate_url(@candidate)
    assert_response :success
  end

  test "should update candidate" do
    patch candidate_url(@candidate), params: { candidate: { email_id: @candidate.email_id, linkedin_url: @candidate.linkedin_url, name: @candidate.name, password: 'secret', password_confirmation: 'secret', skype_id: @candidate.skype_id, tel_no: @candidate.tel_no } }
    assert_redirected_to candidate_url(@candidate)
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete candidate_url(@candidate)
    end

    assert_redirected_to candidates_url
  end
end
