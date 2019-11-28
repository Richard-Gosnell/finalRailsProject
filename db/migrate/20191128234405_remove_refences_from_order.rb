class RemoveRefencesFromOrder < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :refences, :string
  end
end
