require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get career" do
    get pages_career_url
    assert_response :success
  end

  test "should get help" do
    get pages_help_url
    assert_response :success
  end

  test "should get terms" do
    get pages_terms_url
    assert_response :success
  end

  test "should get privacy" do
    get pages_privacy_url
    assert_response :success
  end

end
