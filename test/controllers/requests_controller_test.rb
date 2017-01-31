require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post requests_url, params: { request: { approved: @request.approved, approved_date: @request.approved_date, approved_time: @request.approved_time, date_1: @request.date_1, date_2: @request.date_2, date_3: @request.date_3, date_4: @request.date_4, date_5: @request.date_5, mode: @request.mode, time_1: @request.time_1, time_2: @request.time_2, time_3: @request.time_3, time_4: @request.time_4, time_5: @request.time_5 } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { approved: @request.approved, approved_date: @request.approved_date, approved_time: @request.approved_time, date_1: @request.date_1, date_2: @request.date_2, date_3: @request.date_3, date_4: @request.date_4, date_5: @request.date_5, mode: @request.mode, time_1: @request.time_1, time_2: @request.time_2, time_3: @request.time_3, time_4: @request.time_4, time_5: @request.time_5 } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
