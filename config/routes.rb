Rails.application.routes.draw do
  resources :meal_times
 # get 'nutritionist/index'
  get 'nutritionist' => 'nutritionist#index'

  resources :restaurants
  resources :types
  resources :foods

  resources :searches


  get 'admin' => 'admin#index' 
  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end

  resources :users
  root to: 'visitors#index'

  get 'fsearch' => 'foods#fsearch'

  get 'configure_a_meal' => 'meal_times#step1'
  get 'configure_a_meal_step1' => 'restaurants#step2'
  get 'configure_a_meal_step2' => 'types#step3'
  get 'configure_a_meal_step3' => 'foods#step4'



end






