require 'test_helper'

class NotifcationEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notifcation_email = notifcation_emails(:one)
  end

  test "should get index" do
    get notifcation_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_notifcation_email_url
    assert_response :success
  end

  test "should create notifcation_email" do
    assert_difference('NotifcationEmail.count') do
      post notifcation_emails_url, params: { notifcation_email: { active: @notifcation_email.active, email: @notifcation_email.email } }
    end

    assert_redirected_to notifcation_email_url(NotifcationEmail.last)
  end

  test "should show notifcation_email" do
    get notifcation_email_url(@notifcation_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_notifcation_email_url(@notifcation_email)
    assert_response :success
  end

  test "should update notifcation_email" do
    patch notifcation_email_url(@notifcation_email), params: { notifcation_email: { active: @notifcation_email.active, email: @notifcation_email.email } }
    assert_redirected_to notifcation_email_url(@notifcation_email)
  end

  test "should destroy notifcation_email" do
    assert_difference('NotifcationEmail.count', -1) do
      delete notifcation_email_url(@notifcation_email)
    end

    assert_redirected_to notifcation_emails_url
  end
end
