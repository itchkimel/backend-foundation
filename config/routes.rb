Rails.application.routes.draw do
  resources :requests
  resources :users
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end