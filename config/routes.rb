Rails.application.routes.draw do
  resources :my_meals
  resources :meals
  resources :meal_times

 # get 'nutritionist/index'
  get 'nutritionist' => 'nutritionist#index'

  resources :restaurants
  resources :types
  resources :foods

  resources :searches

# the routes for the log in and log out 
  get 'admin' => 'admin#index' 
  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end


  resources :users

# the route to our home page 
  root to: 'visitors#index'

# the route to the shape that will show the result after searching for a food by neame 
  get 'fsearch' => 'foods#fsearch'

# the routes for the steps of configuring a meal 
  get 'configure_a_meal' => 'meal_times#step1'
  get 'configure_a_meal_step1' => 'restaurants#step2'
  get 'configure_a_meal_step2' => 'types#step3'
  get 'configure_a_meal_step3' => 'foods#step4'



end






