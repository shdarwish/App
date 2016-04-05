class FoodTiming < ActiveRecord::Base
	
	has_many :food_times
	has_many :foods, through: :food_times
	validates :timing, presence: true, uniqueness: true
end
