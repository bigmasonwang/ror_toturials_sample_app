require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "lgoin with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: {email:"", password: ""}}
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  # test "lgoin with valid information" do
  #   get login_path
  #   post login_path, session:
  # end
end
