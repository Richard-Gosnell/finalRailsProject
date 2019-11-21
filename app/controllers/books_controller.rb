# frozen_string_literal: true

class BooksController < ApplicationController
  # def show
  #  @books = Book.order('book_name').page(params[:page]).per(5)
  # end

  def index
    @books = Book.order('book_name').page(params[:page]).per(4)
  end

  def show
    @books = Book.find(params[:id])
  end

  def search_results
    @query
  end
end
