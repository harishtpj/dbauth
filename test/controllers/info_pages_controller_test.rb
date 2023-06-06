require "test_helper"

class InfoPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get info_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get info_pages_about_url
    assert_response :success
  end
end
