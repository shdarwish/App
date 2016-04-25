class MealTime < ActiveRecord::Base

# before saving the time, change it to downcase
	before_save { self.time = time.downcase }

	#Relations
	has_many :food_times
	has_many :foods, through: :food_times

	#Validation
	validates :time, presence: true, uniqueness: true
end
