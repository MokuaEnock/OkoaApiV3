Rails.application.routes.draw do
  resources :recipes, only: %i[index create]
  post "/signup", to: "users#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
