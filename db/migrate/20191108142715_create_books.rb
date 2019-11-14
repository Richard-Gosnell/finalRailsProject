# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :page_count
      t.string :author
      t.string :genre
      t.decimal :price

      t.timestamps
    end
  end
end
