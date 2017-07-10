Rails.application.routes.draw do
  get 'users/new'

  get 'sessions/new'

  root :to => 'products#index'
  get 'welcome' => 'pages#welcome'

 ## User Authentication
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  resource :cart, only: [:show]
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
  resources :order_items

end
