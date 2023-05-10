Rails.application.routes.draw do

  root to: "static_pages#index"

  get 'sobre', to: 'static_pages#sobre'

  get 'contato', to: 'static_pages#contato'

  get 'entrar', to: 'sessions#new'

  post 'entrar', to: 'session#create'

  delete 'sair', to: 'session#destroy'

  resources :contacts
  resources :users, only: [:new, :create, :show]

end
