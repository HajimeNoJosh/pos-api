# frozen_string_literal: true

class Merchandise < ApplicationRecord
  belongs_to :user, optional: true
  validates  :name, :description, :department,
             :vendor, :tax, :cost, :retail,
             :quantity, :barcode, :category, presence: true
end
