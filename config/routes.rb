Rails.application.routes.draw do

  # PAGES
  root 'pages#home'

  # RESOURCES
  resources :rent_payments
  resources :properties
  resources :tenants
  resources :landlords
  resources :issues

  # AUTHENTICATION ROUTES
  get '/signup' => 'landlords#new'
  post '/landlords' => 'landlords#create'

  # AUTHENTICATION > SESSIONS
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
