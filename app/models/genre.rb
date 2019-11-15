# frozen_string_literal: true

class Genre < ApplicationRecord
  validates :genre, presence: true
end
