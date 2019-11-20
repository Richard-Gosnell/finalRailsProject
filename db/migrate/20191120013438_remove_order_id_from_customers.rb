class RemoveOrderIdFromCustomers < ActiveRecord::Migration[6.0]
  def change

    remove_column :customers, :order_ID, :string
  end
end
