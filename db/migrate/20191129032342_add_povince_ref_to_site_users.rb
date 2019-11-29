# frozen_string_literal: true

class AddPovinceRefToSiteUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :site_users, :province, null: true, foreign_key: true
  end
end
