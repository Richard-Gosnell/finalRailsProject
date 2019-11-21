# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.order('book_name').page(params[:page]).per(5)
  end
end
