Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'providers', to: 'providers#index'
  get 'providers/new', to: 'providers#new'
  post 'providers', to: 'providers#create'
  get 'providers/:id', to: 'providers#show', as: :provider
  get 'providers/:id/edit', to: 'providers#edit'
  patch 'providers/:id', to: 'providers#update'
  delete 'providers/:id', to: 'providers#destroy'
  get 'categories/new', to: 'categories#new'
  post 'categories', to: 'categories#create'
  get 'events/new', to: 'events#new'
  post 'events', to: 'events#create'
  get 'regions/new', to: 'regions#new'
  post 'regions', to: 'regions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
