Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  root to: "pages#dashboard"
  end

  #Declared two actions of pages
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/profile', to: 'pages#profile'

  resources :parts do
    resources :trades, only: [:new, :create]
  end
  resources :trades, only: [:destroy]

  get '/user/history', to: 'trades#history', as: :history
end
