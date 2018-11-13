# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities = City.create([{ codigo: 1, name: 'Bogota' }, { codigo: 2, name: 'Cali' }])
Location.create(codigo: 2, name: 'Suba', city: City.find(1) )
