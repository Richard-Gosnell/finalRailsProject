# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books, dependent: :destroy # , foreign_key: 'author_name', primary_key: 'author_name'

  validates :author_name, presence: true

  def name
    author_name
  end
end
