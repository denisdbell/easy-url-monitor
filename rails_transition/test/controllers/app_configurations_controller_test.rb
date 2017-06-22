require 'test_helper'

class AppConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_configuration = app_configurations(:one)
  end

  test "should get index" do
    get app_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_app_configuration_url
    assert_response :success
  end

  test "should create app_configuration" do
    assert_difference('AppConfiguration.count') do
      post app_configurations_url, params: { app_configuration: { monitor_delay_In_seconds: @app_configuration.monitor_delay_In_seconds, smtp_port: @app_configuration.smtp_port, smtp_server: @app_configuration.smtp_server, ssl_required: @app_configuration.ssl_required, username: @app_configuration.username } }
    end

    assert_redirected_to app_configuration_url(AppConfiguration.last)
  end

  test "should show app_configuration" do
    get app_configuration_url(@app_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_configuration_url(@app_configuration)
    assert_response :success
  end

  test "should update app_configuration" do
    patch app_configuration_url(@app_configuration), params: { app_configuration: { monitor_delay_In_seconds: @app_configuration.monitor_delay_In_seconds, smtp_port: @app_configuration.smtp_port, smtp_server: @app_configuration.smtp_server, ssl_required: @app_configuration.ssl_required, username: @app_configuration.username } }
    assert_redirected_to app_configuration_url(@app_configuration)
  end

  test "should destroy app_configuration" do
    assert_difference('AppConfiguration.count', -1) do
      delete app_configuration_url(@app_configuration)
    end

    assert_redirected_to app_configurations_url
  end
end
