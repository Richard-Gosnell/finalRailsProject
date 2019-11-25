# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :site_users, controllers: { sessions: 'site_users/sessions' }
  resources :site_users

  # get 'about/about_us_text:sting'
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
  get '/search', to: 'books#search', as: 'search_page'
end
