class RemoveOrderIdFromBookOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :book_orders, :orderID, :string
  end
end
