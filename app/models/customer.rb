# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :orders
  belongs_to :province
  belongs_to :site_user
  validates :first_name, :last_name, :address, presence: true
end
