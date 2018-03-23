require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "usr", full_name: "Example User")
  end
  
  # name validation tests
  test "name should be present (nonblank)" do
    @user.name = " " * 6
    assert_not @user.valid?
  end

  test "name should have a minimum length" do
    @user.name = "a" * 2
    assert_not @user.valid?
  end

  test "name should have a maximum length" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  # full name validation tests
  test "full name should be present (nonblank)" do
    @user.full_name = " " * 6
    assert_not @user.valid?
  end

  test "full_name should have a maximum length" do
    @user.full_name = "a" * 101
    assert_not @user.valid?
  end

end
