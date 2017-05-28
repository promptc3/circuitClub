require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

 
  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

 

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: 
      { batch: @user.batch, 
        email: @user.email, 
        name: @user.name,
         roll: @user.roll,
          password: 'password',
          password_confirmation: 'password' } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
