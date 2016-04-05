Rails.application.routes.draw do
 # get 'nutritionist/index'
  get 'nutritionist' => 'nutritionist#index'

  resources :nutrition_facts
  resources :food_timings
  resources :restaurants
  resources :types
  resources :foods

  resources :searches
  #get 'admin/index'

  #  get 'sessions/new'
#  get 'sessions/create'
#  get 'sessions/destroy'

  get 'admin' => 'admin#index' 
  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end

  resources :users
  root to: 'visitors#index'
end






