# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  validates :book_name, :price, presence: true
end
