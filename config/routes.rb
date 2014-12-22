Rails.application.routes.draw do

  get 'notes/new'

  get 'notes/create'

  get 'notes/destroy'

  # PAGES
  root 'pages#home'
  get '/dashboard' => 'pages#dashboard'
  get '/loggedout' => 'pages#loggedout'

  # RESOURCES
  resources :rent_payments
  resources :tenants
  resources :landlords
  resources :accounting_transactions
  resources :issues
  resources :messages, :only => [:index, :new, :create, :show]
  resources :properties do
    resources :notes, only: [:index, :new, :create, :destroy]
  end

  # AUTHENTICATION ROUTES
  get '/signup' => 'landlords#new'
  post '/landlords' => 'landlords#create'

  # AUTHENTICATION > SESSIONS
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
