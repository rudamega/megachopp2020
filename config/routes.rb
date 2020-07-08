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
  resources :compros
  get '/conciliado/:id', to: 'transactions#conciliado', as: :conciliado
  get '/conciliados/:id', to: 'compros#conciliado_compros', as: :conciliado_compros
  get '/cargado_por/:id', to: 'compros#cargado_compros', as: :conciliado_compros
end
