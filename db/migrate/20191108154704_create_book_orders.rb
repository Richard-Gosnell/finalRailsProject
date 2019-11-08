class CreateBookOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :book_orders do |t|
      t.string :book_name
      t.integer :orderID
      t.integer :quantity

      t.timestamps
    end
  end
end
