Rails.application.routes.draw do
  resources :words
  root 'welcome#index'
  get 'session/create'
  get 'session/destroy'
  resources :favorites
  resources :users

  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"

  get "/me", to: "users#show"
  get '/users/favorite_words/:id', to: 'users#favorite_words'  
  get '/word_search_list', to: 'words#word_search_list'

  delete "/logout", to: "sessions#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
