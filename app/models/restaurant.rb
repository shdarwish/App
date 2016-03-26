class Restaurant < ActiveRecord::Base
	belongs_to :location
	has_many :food_restaurant
	validates :name, presence: true, uniqueness: true
end
