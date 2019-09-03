Rails.application.routes.draw do
  resources :ratings
  resources :pizzas
  resources :drinks
  resources :dips
  resources :toppings
  resources :cheeses
  resources :meats
  resources :users

  resources :users do
    resources :pizzas, only: [:new, :create, :index]
  end

  get 'users/:id/pizza/:pizza_id', to: 'users#pizza'


  root "static_pages#home"


  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'

  delete '/signout', to: 'sessions#destroy'



end
