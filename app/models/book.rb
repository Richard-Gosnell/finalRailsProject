# frozen_string_literal: true

class Book < ApplicationRecord
  # belongs_to :author
  def change
    add_column :description
  end
end
