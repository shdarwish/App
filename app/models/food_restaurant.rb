class FoodRestaurant < ActiveRecord::Base
	
	#Relations 
	belongs_to :food
	belongs_to :restaurant
end
