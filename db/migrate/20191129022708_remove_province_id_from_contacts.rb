class RemoveProvinceIdFromContacts < ActiveRecord::Migration[6.0]
  def change

    remove_column :contacts, :province, :string
  end
end
