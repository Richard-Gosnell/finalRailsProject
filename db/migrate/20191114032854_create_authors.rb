# frozen_string_literal: true

class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors, id: false, primary_key: :author_name do |t|
      t.primary_key :author_name

      t.timestamps
    end
  end
end
