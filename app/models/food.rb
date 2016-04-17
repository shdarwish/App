class Food < ActiveRecord::Base

	before_save { self.name = name.downcase }

	#Relations
	belongs_to :type

	has_many :food_times
	has_many :meal_times, through: :food_times

	has_many :food_restaurants
	has_many :restaurants, through: :food_restaurants

	#Validations
	validates :name, presence: true, uniqueness: true
	validates :type_id, presence: true

	#Nutirition fact info
	validates :servingSize, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :calories, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :protein, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :totalFat, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :saturated, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :trans, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :cholesterol, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :carbohydrates, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :sugars, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :dietaryFiber, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :sodium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :potassium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :magnesium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :calcium, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :iron, presence: true, numericality: {greater_than_or_equal_to: 0}
	validates :vitaminD, presence: true, numericality: {greater_than_or_equal_to: 0}

	#Methods 
	def self.search(search)
		if search
			where(["name LIKE ?","%#{search.downcase}%"])

		end
	end

	def self.clickedtype(type)
		joins(:type).joins(:food_restaurants => :restaurant).joins(:food_times => :meal_time)
		.where(["foods.type_id = types.id
			and foods.id = food_restaurants.food_id 
			and food_restaurants.restaurant_id = restaurants.id 
			and foods.id = food_times.food_id 
			and food_times.meal_time_id = meal_times.id
			and meal_times.time LIKE ? 
			and restaurants.name LIKE ?
			and types.name LIKE ?", "%#{$time}%", "%#{$restaurant}%", "%#{type}%"])

	end


	
end
