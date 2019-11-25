class RemoveCustomerIdFromCustomers < ActiveRecord::Migration[6.0]
  def change

    remove_column :customers, :customer_ID, :integer
  end
end
