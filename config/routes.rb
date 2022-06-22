Rails.application.routes.draw do
  root 'pages#home'
  resources :games, only: [:index, :show]
end
