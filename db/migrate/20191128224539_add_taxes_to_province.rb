class AddTaxesToProvince < ActiveRecord::Migration[6.0]
  def change
    add_column :provinces, :taxes, :decimal
  end
end
