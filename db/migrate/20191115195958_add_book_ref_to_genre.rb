# frozen_string_literal: true

class AddBookRefToGenre < ActiveRecord::Migration[6.0]
  def change
    add_reference :genres, :book, null: true, foreign_key: true
  end
end
