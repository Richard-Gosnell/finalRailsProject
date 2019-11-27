class RemoveIncorrectNameFromCustomers < ActiveRecord::Migration[6.0]
  def change

    remove_column :customers, :refences, :string
  end
end
