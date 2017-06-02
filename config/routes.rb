Rails.application.routes.draw do
  get 'user_preferences/edit'

  put 'user_preferences/update'

  get 'home/index'

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}

  root to: 'pages#home'

  resources :restaurants, only: [:index, :show] do
    resources :match_lists, only: [ :create, :destroy]
  end

  resources :match_lists do
    resources :evaluations, only: [:show, :new, :create, :index]
  end

  resources :evaluations, only: [:show, :create, :new] do
    resources :reservations, only: [:show, :create, :new] do
    end
  end
  resources :users, only: [:index, :edit, :show, :create] do
    post :impersonate, on: :member
    post :stop_impersonating, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
