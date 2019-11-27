# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :site_users, path: 'auth', path_names: { sign_out: 'logout' } # controllers: { sessions: 'site_users/sessions' }

  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :abouts
  resources :books

  root to: 'books#index'
  get '/about/index', to: 'about#index'
  get '/contact/index', to: 'contact#index'
  get '/order/order', to: 'order#order'
  get '/books/index/', to: 'books#index'
  get '/customers/new', to: 'customers#new'
  get '/customers/_customers', to: 'customers#_customer'
  get '/search', to: 'books#search', as: 'search_page'

  # devise_for :site_user, controllers: { registrations: 'registrations' }

  # get 'auth/logout', to: 'auth#logout', as: :destroy_site_user_session
  # devise_for :site_users do
  #  get '/site_users/sign_out', to: 'devise/sessions#destroy'
  # end
end
