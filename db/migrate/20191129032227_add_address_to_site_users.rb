class AddAddressToSiteUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :site_users, :address, :string
  end
end
