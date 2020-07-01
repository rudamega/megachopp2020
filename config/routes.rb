Rails.application.routes.draw do
  get 'banks/index'
  get 'banks/new'
  devise_for :users
  root to: 'pages#home'

  resources :banks do
    resources :transactions, only: [:new, :create]
  end
end
