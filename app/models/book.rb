# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  belongs_to :book_orders

  validates :book_name, :price, presence: true
end
