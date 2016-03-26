class Restaurant < ActiveRecord::Base
	belongs_to :location
	has_many :foods, through: :food_restaurant
	validates :name, presence: true, uniqueness: true
end
