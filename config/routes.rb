# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :site_users, path: 'auth', path_names: { sign_out: 'logout' } # controllers: { sessions: 'site_users/sessions' }

  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :abouts
  resources :books
  resources :customers

  root to: 'books#index'
  get '/about/index', to: 'about#index'
  get '/contact/index', to: 'contact#index'
  get '/order/order', to: 'order#order'
  get '/books/index/', to: 'books#index'
  # get '/customers/new', to: 'customers#new'
  get '/customers/show', to: 'customers#show', as: 'customer_show'
  post 'books/add_to_cart/:id', to: 'books#add_to_cart', as: 'add_to_cart'
  delete 'books/remove_from_cart/:id', to: 'books#remove_from_cart', as: 'remove_from_cart'
  get '/search', to: 'books#search', as: 'search_page'

  # devise_for :site_user, controllers: { registrations: 'registrations' }

  # get 'auth/logout', to: 'auth#logout', as: :destroy_site_user_session
  # devise_for :site_users do
  #  get '/site_users/sign_out', to: 'devise/sessions#destroy'
  # end
end
