class AddNameToSiteUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :site_users, :name, :string
  end
end
