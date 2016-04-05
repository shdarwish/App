class Restaurant < ActiveRecord::Base
	
	has_many :food_restaurants
	has_many :foods, through: :food_restaurants
	validates :name, presence: true, uniqueness: true
end
