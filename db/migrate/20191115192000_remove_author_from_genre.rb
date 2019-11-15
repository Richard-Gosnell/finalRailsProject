class RemoveAuthorFromGenre < ActiveRecord::Migration[6.0]
  def change

    remove_column :genres, :author, :string
  end
end
