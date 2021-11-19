class CreateManufacturers < ActiveRecord::Migration[6.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :year_founded
      t.string :country_founded

      t.timestamps
    end
  end
end
