class Restaurant < ActiveRecord::Base
	belongs_to :location
	validates :name, presence: true, uniqueness: true
end
