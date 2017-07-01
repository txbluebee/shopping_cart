Rails.application.routes.draw do
  root :to => 'products#index'
  get 'welcome', to: 'pages#welcome'

  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end
