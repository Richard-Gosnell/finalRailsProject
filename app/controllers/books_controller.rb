# frozen_string_literal: true

class BooksController < ApplicationController
  def show
    @books = BooksController.order('book_name').page(params[:page]).per(5)
  end
end
