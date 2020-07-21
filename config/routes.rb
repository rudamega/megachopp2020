Rails.application.routes.draw do
  get 'banks/index'
  get 'banks/new'
  devise_for :users
  root to: 'pages#home'

  resources :banks do
    resources :extractos, only: [:new, :create]
    resources :cheques, only: [:new, :create]
    end
    resources :extractos, only: [:index, :show] do
      resources :transactions, only: [:new, :create]
    end

  resources :cheques, only: [:show, :edit, :update] do
    resources :hojas, only: [:new, :create]
  end
  resources :hojas, only: [:show, :edit, :update]
  resources :habitacions
  resources :transactions, only: [:show, :edit, :update]
  resources :compros
  get '/conciliado/:id', to: 'transactions#conciliado', as: :conciliado
  get '/aprobado/:id', to: 'hojas#aprobado', as: :aprobado
  get '/compensado/:id', to: 'hojas#compensado', as: :compensado
  get '/conciliados/:id', to: 'compros#conciliado_compros', as: :conciliado_compros
  get '/cargado_por/:id', to: 'compros#cargado_compros', as: :cargado_por
  get '/bolsas/:id', to: 'habitacions#bolsas', as: :bolsas
  get '/jabon_en_polvo/:id', to: 'habitacions#jabon_en_polvo', as: :jabon_en_polvo
  get '/jabon_en_pan/:id', to: 'habitacions#jabon_en_pan', as: :jabon_en_pan
  get '/franela/:id', to: 'habitacions#franela', as: :franela
  get '/trapos/:id', to: 'habitacions#trapos', as: :trapos
  get '/latona/:id', to: 'habitacions#latona', as: :latona
  get '/escoba/:id', to: 'habitacions#escoba', as: :escoba
  get '/alcohol/:id', to: 'habitacions#alcohol', as: :alcohol
  get '/muda_sabana/:id', to: 'habitacions#muda_sabana', as: :muda_sabana
  get '/transformador/:id', to: 'habitacions#transformador', as: :transformador
  get '/agua/:id', to: 'habitacions#agua', as: :agua
  get '/frazada/:id', to: 'habitacions#frazada', as: :frazada
  get '/papel_extra/:id', to: 'habitacions#papel_extra', as: :papel_extra
  get '/frigabar/:id', to: 'habitacions#frigabar', as: :frigabar
  get '/trapo_ventana/:id', to: 'habitacions#trapo_ventana', as: :trapo_ventana
  get '/trapo_cabezera/:id', to: 'habitacions#trapo_cabezera', as: :trapo_cabezera
  get '/toalla_cuerpo/:id', to: 'habitacions#toalla_cuerpo', as: :toalla_cuerpo
  get '/toalla_rostro/:id', to: 'habitacions#toalla_rostro', as: :toalla_rostro
  get '/toalla_piso/:id', to: 'habitacions#toalla_piso', as: :toalla_piso
  get '/muda_toalla/:id', to: 'habitacions#muda_toalla', as: :muda_toalla
  get '/cama_matrimonial/:id', to: 'habitacions#cama_matrimonial', as: :cama_matrimonial
end
