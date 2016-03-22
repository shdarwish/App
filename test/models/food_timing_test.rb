require 'test_helper'

class FoodTimingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Food Timing attributes must not be empty" do 
  	food_timing = FoodTiming.new
  	assert food_timing.invalid?
  	assert food_timing.errors[:timing].any?
  end
end
