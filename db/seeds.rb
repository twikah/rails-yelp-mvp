require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning up the restaurants... 🧹 🧹'

Restaurant.destroy_all

puts 'Creating new restaurants... 🍔 🍕'

10.times do
  Restaurant.create!(
    name: Faker::Restaurant.unique.name,
    address: Faker::Address.unique.full_address,
    phone_number: Faker::Number.unique.number(digits: 9),
    category: Restaurant::CATEGORIES.sample
  )
end

puts 'All done! 🍱 🌮'
