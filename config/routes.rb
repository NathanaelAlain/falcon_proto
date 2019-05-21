Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  root to: "pages#dashboard"
  end

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :parts do
    resources :transactions, only: [:new, :create]
  end
  resources :transactions, only: [:destroy]
end
