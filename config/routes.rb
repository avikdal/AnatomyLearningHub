Rails.application.routes.draw do
  resources :user_anatomy_modules
  resources :reviews
  resources :anatomy_modules
  resources :users
 
  get "/me", to: "users#show"
end
