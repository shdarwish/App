Rails.application.routes.draw do
  resources :food_timings
  resources :restaurants
  resources :locations
  resources :types
  resources :foods
  resources :nutrition_facts
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

  resources :roles
  resources :users
  root to: 'visitors#index'
end






