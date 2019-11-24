class AddUsernameToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :postalcode, :string
    add_column :customers, :email_address, :string
  end
end
