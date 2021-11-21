# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manufacturer.create(name: 'Guinness', year_founded: '1759', country_founded: 'Republic of Ireland')
Manufacturer.create(name: 'Heineken', year_founded: '1864', country_founded: 'Netherlands')
Manufacturer.create(name: 'Eisberg', year_founded: '1976', country_founded: 'Switzerland')

Drink.create(name: '0.0', drink_type: 'stout', concentration: '0.05', manufacturer_id: 1)
Drink.create(name: '0.0', drink_type: 'lager', concentration: '0.03', manufacturer_id: 2)
Drink.create(name: 'sparkling white wine', drink_type: 'sparkling white wine', concentration: '0.6 ', manufacturer_id: 3)
