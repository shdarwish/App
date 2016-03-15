class Food < ActiveRecord::Base
	has_one :nutrition_fact
	belongs_to :food_timing
	belongs_to :type
	validates :name, presence: true, uniqueness: true
	validates :type_id, presence: true
	validates :restaurant_id, presence: true
	validates :food_timing_id, presence: true
end
