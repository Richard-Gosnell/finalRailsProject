class RemoveBookFromGenre < ActiveRecord::Migration[6.0]
  def change

    remove_column :genres, :Book_id, :integer
  end
end
