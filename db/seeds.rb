# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"4565646564", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"348534582", category: "italian"}
busaba =  {name: "Busaba", address: "2 Shoreditch High St, London E1 6PQ", phone_number:"448965865", category: "french"}
breakfast_club =  {name: "Breakfast Club", address: "8 Shoreditch High St, London E1 6PQ", phone_number:"448754854", category: "italian"}
ivy = {name: "Ivy", address: "67B Shoreditch High St, London E1 6PQ", phone_number:"44737432473", category: "chinese"}

[dishoom, pizza_east, busaba, breakfast_club, ivy].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
