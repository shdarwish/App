class VisitorsController < ApplicationController


	#do not check if the user is logged_in before showing this page
	skip_before_action :authenticate
end
