class AddOrderIdRefToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :refences, :orderID
  end
end
