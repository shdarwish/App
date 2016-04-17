class FoodTime < ActiveRecord::Base
	
	#Relations
	belongs_to :food
	belongs_to :meal_time
end
