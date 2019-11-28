class RemoveOrderIdFromOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :order_ID, :integer
  end
end
