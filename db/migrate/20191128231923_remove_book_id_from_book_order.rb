class RemoveBookIdFromBookOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :book_orders, :book_id, :interger
  end
end
