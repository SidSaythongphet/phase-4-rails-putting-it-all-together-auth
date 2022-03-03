Rails.application.routes.draw do
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
  resources :recipes, only: [:index, :create]
end
