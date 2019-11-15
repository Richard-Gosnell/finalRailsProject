class RemoveBookNameFromGenre < ActiveRecord::Migration[6.0]
  def change

    remove_column :genres, :book_name, :string
  end
end
