Rails.application.routes.draw do
  get 'banks/index'
  get 'banks/new'
  devise_for :users
  root to: 'pages#home'

  resources :banks do
    resources :extractos, only: [:new, :create]
    end
    resources :extractos, only: [:index, :show] do
      resources :transactions, only: [:new, :create]
     end
  resources :transactions, only: [:show, :edit, :update]
end
