Rails.application.routes.draw do
  resources :ratings
  resources :pizzas
  resources :users

  resources :users do
    resources :pizzas, only: [:new, :create, :index]
  end

  get "/bestuser", to: "users#best_users", as: "best_users"


  root "static_pages#home"

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'

  delete '/signout', to: 'sessions#destroy'

  get '/auth/:provider/callback' => 'sessions#omniauth'

end
