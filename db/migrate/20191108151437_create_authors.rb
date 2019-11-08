class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :author_name
      t.string :book_name

      t.timestamps
    end
  end
end
