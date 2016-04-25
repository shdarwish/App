class AdminController < ApplicationController

	#before going to the admin page it checks if the user is admin using admin_only method
	before_action :admin_only

	def index
	end

	private

	# a method that check if the user is admin or not
	def admin_only
		if !current_user.admin?
			redirect_to root_path
		end
	end
end
