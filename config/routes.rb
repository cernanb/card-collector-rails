Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cards
  resources :users

  resources :user_cards, only: [:create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
