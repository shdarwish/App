class Food < ActiveRecord::Base
	has_one :nutrition_fact
	belongs_to :type

	has_many :food_times
	has_many :food_timings, through: :food_times

	has_many :food_restaurants
	has_many :restaurants, through: :food_restaurants
	
	validates :name, presence: true, uniqueness: true
	validates :type_id, presence: true
	validates :restaurant_id, presence: true
	validates :food_timing_id, presence: true

	def self.search(search)
		if search
			where(["name LIKE ?","%#{search}%"])
		else
			all
		end
	end
	
end
