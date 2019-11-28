class RemoveCustomerIdFromOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :customer_id, :integer
  end
end
