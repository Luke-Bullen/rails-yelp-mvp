# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# pizza = Restaurant.create(name: "Pizza Hut", address: "1 downing", category: "italian")
# noodle = Restaurant.create(name: "Yum Yum", address: "2 downing", category: "chinese")
# sushi = Restaurant.create(name: "Yo Sushi", address: "3 downing", category: "japanese")
# snails = Restaurant.create(name: "Snail Trail", address: "4 downing", category: "french")
# choc = Restaurant.create(name: "Chocolate Haven", address: "5 downing", category: "belgian")


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizza = {name: "Pizza Hut", address: "1 downing", category: "italian"}
noodle =  {name: "Yum Yum", address: "2 downing", category: "chinese"}
sushi = {name: "Yo Sushi", address: "3 downing", category: "japanese"}
snails = {name: "Snail Trail", address: "4 downing", category: "french"}
choc = {name: "Chocolate Haven", address: "5 downing", category: "belgian"}



[pizza, noodle, sushi, snails, choc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
