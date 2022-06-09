Rails.application.routes.draw do
  resources :ratings
  resources :reviews
  resources :images
  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/count', to: 'application#count'
end
