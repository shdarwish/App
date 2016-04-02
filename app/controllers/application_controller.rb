class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include SessionsHelper

  protect_from_forgery with: :exception

  before_action :authenticate

  private
  def authenticate
  	return if controller_name == "pages"
  	if !logged_in?
  		flash[:alert] = "Must be an admin or a nutritionist"
  		redirect_to root_path
  	end
  end

end
