class FoodTiming < ActiveRecord::Base
	has_many :food_time
	validates :timing, presence: true, uniqueness: true
end
