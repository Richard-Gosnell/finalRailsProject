# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :first_name, :last_name, :address, presence: true
end
