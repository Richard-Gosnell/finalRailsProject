# frozen_string_literal: true

class Province < ApplicationRecord
  has_many :customer

  def name
    province_name
  end
end
