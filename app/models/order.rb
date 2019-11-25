# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :customers
  has_many :book_orders
  validates :taxes, :total_cost, presence: true
end
