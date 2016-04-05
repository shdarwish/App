class User < ActiveRecord::Base
  has_secure_password
  before_save { self.name = name.downcase }
	validates :name, presence: true, uniqueness: true
	validates :password, length: { minimum: 8 }
end
