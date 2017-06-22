require 'test_helper'

class MonitorResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monitor_result = monitor_results(:one)
  end

  test "should get index" do
    get monitor_results_url
    assert_response :success
  end

  test "should get new" do
    get new_monitor_result_url
    assert_response :success
  end

  test "should create monitor_result" do
    assert_difference('MonitorResult.count') do
      post monitor_results_url, params: { monitor_result: { active: @monitor_result.active, http_reponse_body: @monitor_result.http_reponse_body, http_response_code: @monitor_result.http_response_code } }
    end

    assert_redirected_to monitor_result_url(MonitorResult.last)
  end

  test "should show monitor_result" do
    get monitor_result_url(@monitor_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_monitor_result_url(@monitor_result)
    assert_response :success
  end

  test "should update monitor_result" do
    patch monitor_result_url(@monitor_result), params: { monitor_result: { active: @monitor_result.active, http_reponse_body: @monitor_result.http_reponse_body, http_response_code: @monitor_result.http_response_code } }
    assert_redirected_to monitor_result_url(@monitor_result)
  end

  test "should destroy monitor_result" do
    assert_difference('MonitorResult.count', -1) do
      delete monitor_result_url(@monitor_result)
    end

    assert_redirected_to monitor_results_url
  end
end
