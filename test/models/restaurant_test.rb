require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Restaurant attributes must not be empty" do 
  	restaurant = Restaurant.new
  	assert restaurant.invalid?
  	assert restaurant.errors[:name].any?
  end
end
