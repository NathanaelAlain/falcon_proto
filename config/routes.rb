Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  root to: "pages#dashboard"
  end

  #Declared two actions of pages
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/profile', to: 'pages#profile'

  get 'parts/:id/edit/sold', to: 'parts#form_sold', as: :sold

  resources :parts do
    resources :transactions, only: [:new, :create]
  end
  resources :transactions, only: [:destroy]
end
