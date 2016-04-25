class Restaurant < ActiveRecord::Base
	
	# before saving the name, change it to downcase
	before_save { self.name = name.downcase }

	#Relations
	has_many :food_restaurants
	has_many :foods, through: :food_restaurants

	#Validations
	validates :name, presence: true, uniqueness: true

	#A method used to move from step1 to step2 in configure a meal
	#It gets all the resturants 
	def self.clickedtime(time)
		joins(:food_restaurants => {:food => {:food_times => :meal_time}})
		.where(["restaurants.id = food_restaurants.restaurant_id 
			and food_restaurants.food_id = foods.id 
			and foods.id = food_times.food_id 
			and food_times.meal_time_id = meal_times.id
			and meal_times.time LIKE ?","%#{time}%"]).distinct
	end

end
