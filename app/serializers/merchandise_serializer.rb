# frozen_string_literal: true

class MerchandiseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :department, :vendor, :tax, :cost,
             :retail, :quantity, :barcode, :category
end
