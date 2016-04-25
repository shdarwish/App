class Type < ActiveRecord::Base

	# before saving the name, change it to downcase
	before_save { self.name = name.downcase }

	
	#Relations between models 
	has_many :foods
	validates :name, presence: true, uniqueness: true

	#A method used to move from step2 to step 3 in configure a meal
	#It gets all the types (food groups) 
	def self.clickedrestaurant(restaurant)
		joins(:foods => {:food_restaurants => :restaurant})
		.joins(:foods => {:food_times => :meal_time})
		.where(["types.id = foods.type_id and foods.id = food_restaurants.food_id 
			and food_restaurants.restaurant_id = restaurants.id 
			and foods.id = food_times.food_id 
			and food_times.meal_time_id = meal_times.id
			and meal_times.time LIKE ? 
			and restaurants.name LIKE ?", "%#{$time}%", "%#{restaurant}%"]).distinct

	end
end
