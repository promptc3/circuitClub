require 'test_helper'

class UserTest < ActiveSupport::TestCase
	setup do 
		@user = users(:one)
		@user2 = users(:two)
	end
  test "should be valid" do
    assert @user.valid? , "#{@user.name} has invalid attributes"
  end

  test "should be invalid" do
  	assert_not @user2.valid?, "#{@user2.name} should have invalid attributes"
  end

end
