# frozen_string_literal: true

class BooksController < ApplicationController
  #   before_action :initialize_session
  #   before_action :load_cart

  def index
    @books = Book.order('book_name').page(params[:page]).per(4)
  end

  def show
    @books = Book.find(params[:id])
  end

  def search
    @search_word = params[:search]
    @results = Book.where('book_name LIKE :search', search: "%#{@search_word}%")
    @results = Book.includes(:genre).where('genre_id LIKE :search', search: "%#{@search_word}%")
  end

  #   def add_to_cart
  #     id = params[:id].to_i
  #     session[:cart] << if session[:cart].include?(id)
  #                         id
  #                       else
  #                         id
  #                         # q += 1
  #                       end
  #     # session[:cart] << id unless session[:cart].include?(id)
  #     redirect_to root_path
  #   end
  #
  #   def remove_from_cart
  #     id = params[:id].to_i
  #     session[:cart].delete(id)
  #     redirect_to root_path
  #   end
  #
  #   private
  #
  #   def initialize_session
  #     session[:cart] ||= []
  #     # @cartItems = session[:cart][:q]
  #   end
  #
  #   def load_cart
  #     @cart = Book.find(session[:cart])
  #   end
end
