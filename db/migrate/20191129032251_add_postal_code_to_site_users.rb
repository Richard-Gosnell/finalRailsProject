class AddPostalCodeToSiteUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :site_users, :postal_code, :string
  end
end
