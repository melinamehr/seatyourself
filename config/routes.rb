Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants

  # get '/users', to: 'users#new'
  resources :users   #, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  resources :reservations

  get '/reservation/:id' => 'reservations#show'

end
