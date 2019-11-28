class RemoveBookRefFromBookOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :book_orders, :references, :string
  end
end
