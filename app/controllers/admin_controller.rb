class AdminController < ApplicationController

	before_action :admin_only

	def index
	end

	private

	def admin_only
		if !current_user.admin?
			redirect_to root_path
		end
	end
end
