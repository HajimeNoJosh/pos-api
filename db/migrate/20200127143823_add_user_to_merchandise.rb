class AddUserToMerchandise < ActiveRecord::Migration[5.2]
  def change
    add_reference :merchandises, :user, foreign_key: true
  end
end
