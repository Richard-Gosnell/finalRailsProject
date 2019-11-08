class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.integer :customer_ID
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :order_ID

      t.timestamps
    end
  end
end
