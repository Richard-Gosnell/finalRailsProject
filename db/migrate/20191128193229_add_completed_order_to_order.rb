class AddCompletedOrderToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :completed_order, :boolean
  end
end
