# frozen_string_literal: true

class BooksController < ApplicationController
  def show
    @books = BooksController.find(params[:id])
  end
end
