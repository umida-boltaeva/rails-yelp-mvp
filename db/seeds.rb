# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom',
            address: '7 Boundary St, London E2 7JE',
            phone_number: 416_521_650,
            category: 'chinese' }

pizza_east = { name: 'Pizza East',
               address: '56A Shoreditch High St, London E1 6PQ',
               phone_number: 0416_421_650,
               category: 'italian' }

turkish_grill = { name: 'Golden Grill',
                  address: '7 Watton St, Werribee, Melbourne',
                  phone_number: 0416_521_650,
                  category: 'japanese' }

indo_eats = { name: 'IndoEats',
              address: '15 Synnot St, London E2 7JE',
              phone_number: 0416_221_650,
              category: 'belgian' }

lola_cocina = { name: 'Lola Cocina',
                address: '9 Boundary St, Sydney E2 7JE',
                phone_number: 0416_521_650,
                category: 'french' }

[dishoom, pizza_east, turkish_grill, indo_eats, lola_cocina].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
