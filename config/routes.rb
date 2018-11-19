Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :favours, only: [:index, :create] do
      resources :responses, only: [:create]
  end
    resources :informations, only: [:index, :create] do
      resources :responses, only: [:create]
  end
    resources :events, only: [:index, :create] do
      resources :responses, only: [:create]
  end
end
