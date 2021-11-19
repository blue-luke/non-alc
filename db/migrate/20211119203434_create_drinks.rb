class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :drink_type
      t.float :concentration

      t.timestamps
    end
  end
end
