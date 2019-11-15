# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author # , foreign_key: 'author_name', primary_key: 'author_name'
  #add_foreign_key :author

  validates :book_name, :price, presence: true
  def change
    # add_foreign_key :books, :author
  end
end
