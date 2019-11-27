# frozen_string_literal: true

class AddEmailRefToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :site_user, null: true, foreign_key: true
  end
end
