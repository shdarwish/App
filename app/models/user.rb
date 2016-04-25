class User < ActiveRecord::Base


  #Adds methods to set and authenticate against a BCrypt password.
  has_secure_password

  # before saving the name, change it to downcase
  before_save { self.name = name.downcase }

  #Validations 
	validates :name, presence: true, uniqueness: true
	validates :password, length: { minimum: 8 }
 

end
