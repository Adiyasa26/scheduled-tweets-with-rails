Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "about", to: "about#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "session#new"
  post "sign_in", to: "session#create"

  delete "logout", to: "session#destroy"

  root to: "main#index"
end
