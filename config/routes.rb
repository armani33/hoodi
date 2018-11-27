Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/nearby_users', to: 'pages#nearby_users'
  # get 'pages/message', to: 'messages#index'
    resources :responses, only: [:show]
    resources :messages, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :favours, only: [:index, :create] do
      resources :responses, only: [:show, :create]
      resources :messages, only: [:create]
    end
    resources :informations, only: [:index, :create] do
      resources :responses, only: [:index, :create]
    end

    resources :events, only: [:index, :create] do
      resources :responses, only: [:index, :create]
    end
end
