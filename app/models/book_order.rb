# frozen_string_literal: true

class BookOrder < ApplicationRecord
  has_many :books
  has_many :orders

  validates :quantity, presence: true
end
