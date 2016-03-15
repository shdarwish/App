class User < ActiveRecord::Base
  has_secure_password
	belongs_to :role
	validates :name, presence: true, uniqueness: true
	validates :role_id, presence: true
end
