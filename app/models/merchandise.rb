# frozen_string_literal: true

class Merchandise < ApplicationRecord
  belongs_to :user, optional: true
  validates  :name, :barcode, :tax, :retail, :quantity, presence: true
  validates  :description, :department,
             :vendor, :cost,
             :category, presence: true, allow_blank: true
end
