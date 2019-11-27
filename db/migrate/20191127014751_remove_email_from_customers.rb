class RemoveEmailFromCustomers < ActiveRecord::Migration[6.0]
  def change

    remove_column :customers, :email_address, :string
  end
end
