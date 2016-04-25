class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include SessionsHelper

  protect_from_forgery with: :exception

  #before going to any page it checks if the user is logged_in
  before_action :authenticate

  private
  # A method that check if the user logged in
  # if a user is logged in he/she might be either an admin or a nutrioninist
  def authenticate
  	return if controller_name == "pages"
  	if !logged_in?
  		flash[:alert] = "Must be an admin or a nutritionist"
  		redirect_to root_path
  	end
  end

  # A method that all to access to the current meal id that is stored in the session 
  def current_meal
    Meal.find(session[:meal_id])
    rescue ActiveRecord::RecordNotFound
      meal = Meal.create
      session[:meal_id] = meal.id
      meal
    end
    helper_method :current_meal


end
