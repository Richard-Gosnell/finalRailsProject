# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :genre, presence: true

  def name
    genre
  end
end
