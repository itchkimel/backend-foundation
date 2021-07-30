Rails.application.routes.draw do

  post "/signup", to: "users#signup"
  post "/users/login", to: "users#login"
  get "/me", to: "users#me"

  resources :requests
  resources :users
  resources :admins
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
