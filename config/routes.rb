Ripelist::Application.routes.draw do
  root :to => 'listings#index'

  resources :users
  resources :listings
  resources :categories
  resources :sessions
end
