class DeletingManufacturerColumnInDrinksTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :drinks, :manufacturer
  end
end
