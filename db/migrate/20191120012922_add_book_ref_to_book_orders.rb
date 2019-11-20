# frozen_string_literal: true

class AddBookRefToBookOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :book_orders, :book, null: true, foreign_key: true
  end
end
