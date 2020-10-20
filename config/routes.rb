Rails.application.routes.draw do
  get 'providers', to: 'providers#index'
  get 'providers/new', to: 'providers#new'
  post 'providers', to: 'providers#create'
  get 'providers/:id', to: 'providers#show', as: :provider
  get 'providers/:id/edit', to: 'providers#edit'
  patch 'providers/:id', to: 'providers#update'
  delete 'providers/:id', to: 'providers#destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
