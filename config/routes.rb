Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants

  # get '/users', to: 'users#new'

  resource :users   #, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]

  resource :reservations
  resource :reservation
end
