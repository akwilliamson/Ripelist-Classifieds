Ripelist::Application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  root to: 'listings#index'
  match '/sessions/user', to: 'devise/sessions#create', via: :post

  resources :users
  resources :listings
  resources :categories
  resources :sessions
end
