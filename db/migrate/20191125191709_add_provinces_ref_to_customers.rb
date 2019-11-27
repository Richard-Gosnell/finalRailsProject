# frozen_string_literal: true

class AddProvincesRefToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :province, null: true, foreign_key: true
  end
end
