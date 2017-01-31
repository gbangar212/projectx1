require 'test_helper'

class InterviewersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interviewer = interviewers(:one)
  end

  test "should get index" do
    get interviewers_url
    assert_response :success
  end

  test "should get new" do
    get new_interviewer_url
    assert_response :success
  end

  test "should create interviewer" do
    assert_difference('Interviewer.count') do
      post interviewers_url, params: { interviewer: { bio: @interviewer.bio, currency: @interviewer.currency, current_emp: @interviewer.current_emp, email_id: @interviewer.email_id, linkedin_url: @interviewer.linkedin_url, meeting_r: @interviewer.meeting_r, meeting_y: @interviewer.meeting_y, money_disbursed: @interviewer.money_disbursed, money_earner: @interviewer.money_earner, name: @interviewer.name, no_of_rating: @interviewer.no_of_rating, password: 'secret', password_confirmation: 'secret', prev_emp_1: @interviewer.prev_emp_1, prev_emp_2: @interviewer.prev_emp_2, rating: @interviewer.rating, skill_1: @interviewer.skill_1, skill_2: @interviewer.skill_2, skill_3: @interviewer.skill_3, skill_4: @interviewer.skill_4, skill_5: @interviewer.skill_5, skype_id: @interviewer.skype_id, tel_no: @interviewer.tel_no, video_call_r: @interviewer.video_call_r, video_call_y: @interviewer.video_call_y, voice_call_r: @interviewer.voice_call_r, voice_call_y: @interviewer.voice_call_y } }
    end

    assert_redirected_to interviewer_url(Interviewer.last)
  end

  test "should show interviewer" do
    get interviewer_url(@interviewer)
    assert_response :success
  end

  test "should get edit" do
    get edit_interviewer_url(@interviewer)
    assert_response :success
  end

  test "should update interviewer" do
    patch interviewer_url(@interviewer), params: { interviewer: { bio: @interviewer.bio, currency: @interviewer.currency, current_emp: @interviewer.current_emp, email_id: @interviewer.email_id, linkedin_url: @interviewer.linkedin_url, meeting_r: @interviewer.meeting_r, meeting_y: @interviewer.meeting_y, money_disbursed: @interviewer.money_disbursed, money_earner: @interviewer.money_earner, name: @interviewer.name, no_of_rating: @interviewer.no_of_rating, password: 'secret', password_confirmation: 'secret', prev_emp_1: @interviewer.prev_emp_1, prev_emp_2: @interviewer.prev_emp_2, rating: @interviewer.rating, skill_1: @interviewer.skill_1, skill_2: @interviewer.skill_2, skill_3: @interviewer.skill_3, skill_4: @interviewer.skill_4, skill_5: @interviewer.skill_5, skype_id: @interviewer.skype_id, tel_no: @interviewer.tel_no, video_call_r: @interviewer.video_call_r, video_call_y: @interviewer.video_call_y, voice_call_r: @interviewer.voice_call_r, voice_call_y: @interviewer.voice_call_y } }
    assert_redirected_to interviewer_url(@interviewer)
  end

  test "should destroy interviewer" do
    assert_difference('Interviewer.count', -1) do
      delete interviewer_url(@interviewer)
    end

    assert_redirected_to interviewers_url
  end
end
