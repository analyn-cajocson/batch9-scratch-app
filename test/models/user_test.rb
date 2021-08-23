require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  test "should not save User without first_name" do
    user = User.new
    user.last_name = 'Cruz'
    user.middle_name = 'Hey'
    user.age = 12
    user.gender = 'Male'

    assert_not user.save, "Saved the User without a first_name"
  end
end
