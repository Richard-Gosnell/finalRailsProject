class AddCityToSiteUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :site_users, :city, :string
  end
end
