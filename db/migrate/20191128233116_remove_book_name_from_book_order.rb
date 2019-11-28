class RemoveBookNameFromBookOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :book_orders, :book_name, :string
  end
end
