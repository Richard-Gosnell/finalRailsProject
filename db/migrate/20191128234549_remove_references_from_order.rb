class RemoveReferencesFromOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :references, :string
  end
end
