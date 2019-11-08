class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_ID
      t.integer :customer_ID
      t.decimal :taxes
      t.decimal :total_cost

      t.timestamps
    end
  end
end
