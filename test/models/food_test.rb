require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "food attributes must not be empty" do 
  	food = Food.new
  	assert food.invalid?
  	assert food.errors[:name].any?
  	assert food.errors[:type_id].any?
  	assert food.errors[:restaurant_id].any?
  	assert food.errors[:food_timing_id].any?
  end
end
