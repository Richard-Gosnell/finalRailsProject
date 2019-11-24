# frozen_string_literal: true

class BooksController < ApplicationController
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
end
