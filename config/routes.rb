Rails.application.routes.draw do
  get 'reservations/index'
  get 'reservations/create'
  devise_for :users
  root to: 'pages#home'
  get 'pages/landing', to: 'pages#landing'
  get 'pages/nearby_users', to: 'pages#nearby_users'

  # get 'pages/message', to: 'messages#index'

    resources :favourites, only: [:index]
    resources :reservations, only: [:index]

    resources :responses, only: [:show]
    resources :messages, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :favours, only: [:index, :create] do
      resources :responses, only: [:show, :create]
      resources :messages, only: [:create]
    end
    resources :informations, only: [:index, :create] do
      resources :favourites, only: [:create]
      resources :responses, only: [:index, :create]
    end

    resources :events, only: [:index, :create] do
      resources :reservations, only: [:create]
      resources :responses, only: [:index, :create]
    end
end
