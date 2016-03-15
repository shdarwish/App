class Type < ActiveRecord::Base
	has_many :foods
	validates :name, presence: true, uniqueness: true
end
