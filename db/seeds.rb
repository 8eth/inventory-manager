# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Warehouses ..."
Warehouse.create(name: 'The Original', address: '123 Original St. Cool City, Cool State 12345')

puts "Creating Items ..."
Item.create(name: 'Fancy Water Bottle', price: 10.99, quantity: 10, warehouse_id: 1)

puts "Done seeding ✅ !"