Ripelist::Application.routes.draw do
  root :to => 'listings#index'
  get 'login', to: 'sessions#index', as: 'login'
  get 'signup', to: 'users#new', as: 'signup'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :listings
  resources :categories
  resources :sessions
end
