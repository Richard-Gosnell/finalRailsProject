# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get '/pages/_about', to: 'pages#_about'
  get '/pages/_contact', to: 'pages#_contact'
  get '/order/order', to: 'order#order'
  get '/books/book/', to: 'books#book'
end
