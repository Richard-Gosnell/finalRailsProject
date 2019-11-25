# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :orders
  validates :first_name, :last_name, :address, presence: true
end
