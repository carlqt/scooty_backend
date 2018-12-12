# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
center = { lat: 1.3521, lng: 103.8198 }
radius = 2000

10.times do
  point = RandomPointGenerator.random_location(center, radius)
  Scooter.create(longitude: point[:lng], latitude: point[:lat])
end
