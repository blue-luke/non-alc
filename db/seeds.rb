# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Drink.create(manufacturer: 'Heineken', name: '0.0', drink_type: 'lager', concentration: '0.03')
Drink.create(manufacturer: 'Guinness', name: '0.0', drink_type: 'stour', concentration: '0.05')
Drink.create(manufacturer: 'Eisberg', name: 'sparkling white wine', drink_type: 'sparkling white wine', concentration: '0.6 ')