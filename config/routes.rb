Rails.application.routes.draw do
  # WELCOME
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CRUD USUARIOS
  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/delete' => 'devise/registrations#destroy'
    get '/users/show' => 'users/sessions#show'
    get '/users/edit_money' => 'users/sessions#edit'
    patch '/users/add_money' => 'users/sessions#add_money'
  end
  # CRUD ASSISTS
  # CREATE
  get 'assists/:id', to: 'assists#new', as: "assists_new"
  post 'assists/:id', to: "assists#create"

  # READ
  get 'assists/:id/index', to: 'assists#index', as: 'assists_index'

  # UPDATE
  get 'assists/show'
  get 'assists/edit'

  # DELETE
  delete "assists/:id", to: "assists#delete"

  # CRUD VALORACION CARRETES
  # CREATE
  get 'valoracion_carretes/new/:id', to: 'valoracion_carretes#new', as: 'valoracion_carretes_new'
  post "valoracion_carretes", to: "valoracion_carretes#create"

  # READ
  get 'valoracion_carretes/index', to: "valoracion_carretes#index"
  get "valoracion_carretes/:id", to: "valoracion_carretes#show", as: "valoracion_carrete"
  get 'valoracion_carretes/index/:id', to: 'valoracion_carretes#index', as: 'valoracion_carretes_id'

  # UPDATE
  get "valoracion_carretes/:id/edit", to: "valoracion_carretes#edit", as: "valoracion_carrete_edit"
  patch "valoracion_carretes/:id", to: "valoracion_carretes#update", as: "valoracion_carrete_patch"

  # DELETE
  delete "valoracion_carretes/:id", to: "valoracion_carretes#delete"

  # CRUD VALORACION SERVICIOS
  # CREATE
  get 'valoracion_servicios/new/:id', to: 'valoracion_servicios#new', as: 'valoracion_servicios_new'
  post "valoracion_servicios", to: "valoracion_servicios#create"

  # READ
  get 'valoracion_servicios/index', to: "valoracion_servicios#index"
  get "valoracion_servicios/:id", to: "valoracion_servicios#show", as: "valoracion_servicio"
  get 'valoracion_servicios/index/:id', to: 'valoracion_servicios#index', as: 'valoracion_servicios_id'

  # UPDATE
  get "valoracion_servicios/:id/edit", to: "valoracion_servicios#edit", as: "valoracion_servicio_edit"
  patch "valoracion_servicios/:id", to: "valoracion_servicios#update", as: "valoracion_servicio_patch"

  # DELETE
  delete "valoracion_servicios/:id", to: "valoracion_servicios#delete"

  # CRUD SERVICIOS
  # CREATE
  get 'servicios/new', to: "servicios#new"
  post 'servicios', to: "servicios#create"

  # READ
  get 'servicios/index', to: "servicios#index"
  get "servicios/:id", to: "servicios#show", as: 'servicio_seleccionado'
  get "servicios/:id/edit_admin", as: 'servicio_admin', to: 'servicios#edit_admin'
  patch 'servicios/:id/edit_admin', to: "servicios#aceptar"
  delete 'servicios/:id/edit_admin', to: "servicios#rechazar"

  # UPDATE
  get "servicios/:id/edit", to: "servicios#edit", as: 'servicio_edit'
  patch "servicios/:id", to: "servicios#update", as: 'servicio_update'

  # DELETE
  delete "servicios/:id", to: "servicios#delete"

  # CRUD COMUNAS
  # CREATE
  get 'comunas/new', to: "comunas#new"
  post "comunas", to: "comunas#create"

  # READ
  get 'comunas/index', to: "comunas#index"
  get "comunas/:id", to: "comunas#show", as: "comuna"

  # UPDATE
  get "comunas/:id/edit", to: "comunas#edit", as: "comuna_edit"
  patch "comunas/:id", to: "comunas#update", as: "comuna_patch"

  # DELETE
  delete "comunas/:id", to: "comunas#delete"

  # CRUD COMENTARIOS
  # CREATE
  get 'comentarios/new/:id', to: 'comentarios#new', as: 'comentarios_new'
  post 'comentarios', to: 'comentarios#create'

  # READ
  get 'comentarios/index', to: 'comentarios#index'
  get 'comentarios/:id', to: 'comentarios#show', as: 'comentario'
  get 'comentarios/index/:id', to: 'comentarios#index', as: 'comentarios_id'

  # UPDATE
  get 'comentarios/:id/edit', to: 'comentarios#edit', as: 'comentario_edit'
  patch 'comentarios/:id', to: 'comentarios#update', as: 'comentario_update'

  # DELETE
  delete 'comentarios/:id', to: 'comentarios#delete', as: ''

  # CRUD COMENTARIOS CARRETES
  # CREATE
  get 'comentario_carretes/new/:id', to: 'comentario_carretes#new', as: 'comentario_carrete_new'
  post 'comentario_carretes', to: 'comentario_carretes#create'

  # READ
  get 'comentario_carretes/:id', to: 'comentario_carretes#show', as: 'comentario_carrete'
  get 'comentario_carretes/index/:id', to: 'comentario_carretes#index', as: 'comentario_carretes_id'

  # UPDATE
  get 'comentario_carretes/:id/edit', to: 'comentario_carretes#edit', as: 'comentario_carrete_edit'
  patch 'comentario_carretes/:id', to: 'comentario_carretes#update', as: 'comentario_carrete_update'

  # DELETE
  delete 'comentario_carretes/:id', to: 'comentario_carretes#delete', as: ''

  # CRUD CARRETES
  # CREATE
  get 'carretes/new', to: 'carretes#new', as: 'carrete_new'
  post 'carretes', to: 'carretes#create'

  # READ
  get 'carretes/index', to: 'carretes#index'
  get 'carretes/:id', to: 'carretes#show', as: 'carrete_seleccionado'

  # UPDATE
  get 'carretes/:id/edit', to: 'carretes#edit', as: 'carrete_edit'
  patch 'carretes/:id', to: 'carretes#update', as: 'carrete_update'

  # DELETE
  delete 'carretes/:id', to: 'carretes#delete', as: ''

  # CRUD OFERTS
  # CREATE
  get 'oferts/new/:id', to: 'oferts#new', as: 'ofert_new'
  post "oferts", to: "oferts#create"

  # READ
  get 'oferts/index', to: 'oferts#index'
  get 'oferts/:id', to: 'oferts#show', as: 'ofert_seleccionado'

  # UPDATE
  get 'oferts/:id/edit', to: 'oferts#edit', as: 'ofert_edit'
  patch 'oferts/:id', to: 'oferts#update', as: 'ofert_update'

  # DELETE
  delete "oferts/:id", to: "oferts#delete"
  get 'oferts/index/:id', to: 'oferts#index', as: 'carrete_id'

  # CRUD CONTRATOS
  # CREATE
  get 'contratos/new/:id', to: 'contratos#new', as: 'contrato_new'
  post 'contratos', to: 'contratos#create'

  # READ
  get 'contratos/index', to: 'contratos#index'
  get 'contratos/:id', to: 'contratos#show', as: 'contrato_seleccionado'

  # UPDATE

  # DELETE
  delete "contratos/:id", to: "contratos#delete"

  # CRUD OPERATES
  # CREATE
  get 'operates/new', to: 'operates#new', as: 'operate_new'
  post "operates", to: "operates#create"

  # READ
  get 'operates/index', to: 'operates#index'
  get 'operates/:id', to: 'operates#show', as: 'operate_seleccionado'

  # UPDATE
  get 'operates/:id/edit', to: 'operates#edit', as: 'operate_edit'
  patch 'operates/:id', to: 'operates#update', as: 'operate_update'

  # DELETE
  delete "operates/:id", to: "operates#delete"

  # CRUD FAVORITOS
  # CREATE
  get 'favoritos/:id', to: 'favoritos#new', as: 'favorito_new'
  post 'favoritos/:id', to: 'favoritos#create'

  # READ
  get 'favoritos/:id/index', to: 'favoritos#index', as: 'favoritos_index'
  get 'favoritos/:id', to: 'favoritos#show', as: 'favorito_seleccionado'

  # UPDATE
  get 'favoritos/show'
  get 'favoritos/edit'

  # DELETE
  delete "favoritos/:id", to: "favoritos#delete"
end
