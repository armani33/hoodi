Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :responses, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :favours, only: [:index, :create] do
      resources :responses, only: [:show, :create]
    end
    resources :informations, only: [:index, :create] do
      resources :responses, only: [:index, :create]
    end

    resources :events, only: [:index, :create] do
      resources :responses, only: [:index, :create]
    end

end
