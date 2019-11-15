# frozen_string_literal: true

class AddGenreRefToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :genre, null: true, foreign_key: true
  end
end
