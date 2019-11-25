class RemoveCustomerFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :customer_ID, :integer
  end
end
