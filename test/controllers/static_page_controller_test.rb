require "test_helper"

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | RoR Simple App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | RoR Simple App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | RoR Simple App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | RoR Simple App"
  end
end
