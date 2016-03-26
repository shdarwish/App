class FoodTime < ActiveRecord::Base
	belongs_to :food
	belongs_to :food_timing
end
