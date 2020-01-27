# frozen_string_literal: true

class CreateMerchandises < ActiveRecord::Migration[5.2]
  def change
    create_table :merchandises do |t|
      t.string :name
      t.string :description
      t.string :department
      t.string :vendor
      t.decimal :tax
      t.decimal :cost
      t.decimal :retail
      t.integer :quantity
      t.string :barcode
      t.string :category

      t.timestamps
    end
  end
end
