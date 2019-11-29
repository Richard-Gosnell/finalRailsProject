# frozen_string_literal: true

class AddProvinceRefToContacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :province, null: true, foreign_key: true
  end
end
