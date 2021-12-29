Rails.application.routes.draw do
  resources :words
  resources :favorites
  resources :users
  
  get '/users/favorite_words/:id', to: 'users#favorite_words'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
