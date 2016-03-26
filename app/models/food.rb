class Food < ActiveRecord::Base
	has_one :nutrition_fact
	belongs_to :type
	has_many :food_time
	has_many :food_restaurant
	validates :name, presence: true, uniqueness: true
	validates :type_id, presence: true
	validates :restaurant_id, presence: true
	validates :food_timing_id, presence: true
end
