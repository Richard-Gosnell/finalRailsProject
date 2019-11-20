# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'about/about_us_text:sting'
  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :contacts
  resources :abouts

  root to: 'pages#index'
  get '/about/about', to: 'about#about'
  get '/contact/_contact' # , to: 'contact#_contact'
  get '/order/order', to: 'order#order'
  get '/books/book/', to: 'books#book'
end
