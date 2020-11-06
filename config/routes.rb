Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'providers/search', to: 'providers#index', :as => 'search_page'
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
  get 'services/new', to: 'services#new'
  post 'services', to: 'services#create'
  get 'services/index', to: 'services#index'
  get 'provider_categories/new', to: 'provider_categories#new'
  post 'provider_categories', to: 'provider_categories#create'
  get 'provider_events/new', to: 'provider_events#new'
  post 'provider_events', to: 'provider_events#create'
  get 'provider_regions/new', to: 'provider_regions#new'
  post 'provider_regions', to: 'provider_regions#create'
  get 'posts', to: 'posts#index', :as => 'blog_page'
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#show', :as => 'post'
  get 'posts/:id/edit', to: 'posts#edit'
  patch 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
