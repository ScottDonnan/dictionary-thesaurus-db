Rails.application.routes.draw do
  get 'session/create'
  get 'session/destroy'
  resources :favorites
  resources :users

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"

  get "/me", to: "users#show"
  get '/users/favorite_words/:id', to: 'users#favorite_words'  

  delete "/logout", to: "sessions#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
