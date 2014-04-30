Ripelist::Application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  root to: 'listings#index'

  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
    match '/sessions/user', to: 'devise/sessions#create', via: :post
	end

  resources :users
  resources :listings
  resources :categories
  resources :sessions
end