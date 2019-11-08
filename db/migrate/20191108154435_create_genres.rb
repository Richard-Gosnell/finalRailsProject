class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :genre
      t.string :book_name
      t.string :author

      t.timestamps
    end
  end
end
