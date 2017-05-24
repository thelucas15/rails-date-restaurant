Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :restaurants, only: [:index, :show] do
    resources :match_lists, only: [:index, :show, :new, :create, :update]
  end

  resources :match_lists do
    resources :evaluations, only: [:show] do
  end

  resources :evaluations, only: [:show] do
    resources :reservations, only: [:show] do
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
