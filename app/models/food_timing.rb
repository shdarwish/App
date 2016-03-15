class FoodTiming < ActiveRecord::Base
	has_many :foods
	validates :timing, presence: true, uniqueness: true
end
