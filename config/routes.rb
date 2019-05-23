Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  root to: "pages#dashboard"
  end

  # Declared two actions of pages
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/profile', to: 'pages#profile'

  # Declared the routes for the chechoutpage
  get '/parts/:id/buy', to: 'parts#new_checkout', as: :new_checkout
  patch '/parts/:id/buy', to: 'parts#checkout', as: :checkout

  resources :parts do
    resources :trades, only: [:new, :create]
  end
  resources :trades, only: [:destroy]

  get '/user/history', to: 'trades#history', as: :history
end
