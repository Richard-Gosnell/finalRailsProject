# frozen_string_literal: true

class Province < ApplicationRecord
  has_many :customer
  has_one :contact

  def name
    province_name
  end
end
