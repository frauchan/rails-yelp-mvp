# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
gazzo = { name: 'Gazzo', address: 'Hobrechtstr. 57 Berlin', phone_number: '03098370104', category: 'italian' }
feedback = { name: 'FeedBack', address: 'Paul-Lincke-Ufer 45 Berlin', phone_number: '03061654111', category: 'chinese' }
ryong = { name: 'Ryong', address: 'Torstr. 59 Berlin', phone_number: '3030307047', category: 'japanese' }
mahlo = { name: 'Mahlo Brunch Bar', address: 'Mahlower Str. 32 Berlin', phone_number: '015224123743', category: 'french' }
lavanderia = { name: 'Lavanderia Vecchia', address: 'Flughafenstr. 46 Berlin', phone_number: '3062722152', category: 'italian' }

[gazzo, feedback, ryong, mahlo, lavanderia].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
