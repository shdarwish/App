class Type < ActiveRecord::Base

	before_save { self.name = name.downcase }

	
	#Relations
	has_many :foods
	validates :name, presence: true, uniqueness: true

	def self.clickedrestaurant(restaurant)
		joins(:foods => {:food_restaurants => :restaurant})
		.joins(:foods => {:food_times => :meal_time})
		.where(["types.id = foods.type_id and foods.id = food_restaurants.food_id 
			and food_restaurants.restaurant_id = restaurants.id 
			and foods.id = food_times.food_id 
			and food_times.meal_time_id = meal_times.id
			and meal_times.time LIKE ? 
			and restaurants.name LIKE ?", "%#{$time}%", "%#{restaurant}%"])

	end
end
