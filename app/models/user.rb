class User < ActiveRecord::Base
  has_secure_password
  before_save { self.name = name.downcase }

  #Validations 
	validates :name, presence: true, uniqueness: true
	validates :password, length: { minimum: 8 }

	#private
	#def ensure_an_admin_remains
     # if User.count.zero?
    #    raise "Can't delete last user"
   #   end
   # end    


end
