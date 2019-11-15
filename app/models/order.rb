# frozen_string_literal: true

class Order < ApplicationRecord
  validates :taxes, :total_cost, presence: true
end
