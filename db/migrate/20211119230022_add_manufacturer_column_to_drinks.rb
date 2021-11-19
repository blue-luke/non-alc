class AddManufacturerColumnToDrinks < ActiveRecord::Migration[6.1]
  def change
    add_reference :drinks, :manufacturers, null: false, foreign_key: true
  end
end
