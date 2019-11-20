# frozen_string_literal: true

class RemoveBookFromBookOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :book_orders, :Book_name, :string
  end
end
