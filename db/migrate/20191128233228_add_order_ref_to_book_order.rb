# frozen_string_literal: true

class AddOrderRefToBookOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :book_orders, :order, null: true, foreign_key: true
  end
end
