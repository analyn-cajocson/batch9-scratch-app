require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
 
  test "should go to /users path" do
    get users_path

    assert_response :success
  end

  test "should go to /users/new path" do
    get new_user_path

    assert_response :success
  end

  test "should redirect to /users path after user create" do
    post create_user_path params: { user: 
                                    { first_name: 'Juan',
                                      last_name: 'Cruz' } }
    assert_response :redirect
  end
end
