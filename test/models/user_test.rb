require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user attributes must not be empty" do 
  	user = User.new
  	assert user.invalid?
  	assert user.errors[:name].any?
  	assert user.errors[:password].any?
  end


  def setup
    @user = User.new(name: "hello", password: "aacceedd", password_confirmation: "aacceedd")
  end


  test "user password should be bigger or equal to 8 charecters" do 

     @user.password = @user.password_confirmation = "aabbccdd"
     assert @user.valid?

     @user.password = @user.password_confirmation = "aabbccddee"
     assert @user.valid?
   end


  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end


end
