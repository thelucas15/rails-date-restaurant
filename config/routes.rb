Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :restaurants, only: [:index, :show] do
    resources :match_lists, only: [:index, :show, :new, :create, :update] do
      resources :evaluations, only: [:show] do
        resources :reservations, only: [:show] do
        end
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
