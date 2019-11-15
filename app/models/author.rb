# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :author_name, presence: true

  def name
    author_name
  end
end
