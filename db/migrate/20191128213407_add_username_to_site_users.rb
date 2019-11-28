class AddUsernameToSiteUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :site_users, :username, :string
    add_index :site_users, :username, unique: true
  end
end
