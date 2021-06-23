Rails.application.routes.draw do
  
  post "/login", to: "users#login"
  
  get "/myself", to:  "users#myself"
  
  resources :categories
  resources :feedbacks
  resources :appointments
  resources :trainers
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
