module CurrentMeal
	extend ActiveSupport::Concern

	private





	#This method get the :meal_id from the session object and then find a meal corresponding to this ID. 
	#If meal record is not found, then this method will create new meal, store the ID of the created meal into the session, and then return the new meal. (which in our case my_meal page)
	#We placed this method in a CurrentMeal module and mark it as private. This allows us to share common code between controllers 
	#and furthermore prevents Rails from ever making it available as an action on the controller.

	def set_meal
		@meal = Meal.find(session[:meal_id])
	rescue ActiveRecord::RecordNotFound 
		@meal = Meal.create 
		session[:meal_id] = @meal.id
	end
end


