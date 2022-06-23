Rails.application.routes.draw do
  root 'games#index'
  get '/wishlist', to: 'games#wishlist'
  resources :games, only: %i[new create show edit destroy]
end
