# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# binding.pry
Trip.destroy_all
User.destroy_all
Planet.destroy_all

Trip.reset_pk_sequence
User.reset_pk_sequence
Planet.reset_pk_sequence


### USERS
waverley = User.create!(pronouns: "She/Her/Hers", first_name:"Waverley", last_name:"Leung", age:100, email: "wavey@gmail.com", friendly_neighbor: true)
nunny = User.create!(pronouns: "She/Her/Hers", first_name:"Nunny", last_name:"Reyes", age:101, email: "nunny@gmail.com", friendly_neighbor: true)

#### PLANETS
mercury = Planet.create(name: "Mercury", image: "https://images-assets.nasa.gov/image/GSFC_20171208_Archive_e001545/GSFC_20171208_Archive_e001545~orig.png", facts: "Mercury is the smallest planet in our solar system—only slightly larger than Earth's Moon.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Mars Rover", travel_allowed: true)

venus = Planet.create!(name: "Venus", image: "https://images-assets.nasa.gov/image/PIA00104/PIA00104~orig.jpg", facts: "One day on Venus lasts 243 Earth days because Venus spins backwards, with its sun rising in the west and setting in the east.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Venus moons", travel_allowed: true)

earth = Planet.create!(name: "Earth", image: "https://images-assets.nasa.gov/image/0202795/0202795~orig.jpg", facts: "Earth is a rocky planet with a solid and dynamic surface of mountains, canyons, plains and more. Most of our planet is covered in water.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Waterfalls", travel_allowed: true)

mars = Planet.create!(name: "Mars", image: "https://images-assets.nasa.gov/image/PIA00407/PIA00407~orig.jpg", facts: "Mars is a rocky planet. Its solid surface has been altered by volcanoes, impacts, winds, crustal movement and chemical reactions.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Mars Rover", travel_allowed: true)

jupiter = Planet.create!(name: "Jupiter", image: "https://images-assets.nasa.gov/image/GSFC_20171208_Archive_e000103/GSFC_20171208_Archive_e000103~orig.png", facts: "Jupiter's Great Red Spot is a gigantic storm that’s about twice the size of Earth and has raged for over a century.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Great Red Spot", travel_allowed: true)

saturn = Planet.create!(name: "Saturn", image: "https://images-assets.nasa.gov/image/PIA21046/PIA21046~orig.jpg", facts: "Saturn has the most spectacular ring system, with seven rings and several gaps and divisions between them.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Saturn's rings", travel_allowed: true)

uranus = Planet.create!(name: "Uranus", image: "https://images-assets.nasa.gov/image/PIA18182/PIA18182~orig.jpg", facts: "Uranus is known as the “sideways planet” because it rotates on its side.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Weird Seasons", travel_allowed: true)

neptune = Planet.create!(name: "Neptune", image: "https://images-assets.nasa.gov/image/PIA01492/PIA01492~orig.jpg", facts: "Neptune has at least five main rings and four more ring arcs, which are clumps of dust and debris likely formed by the gravity of a nearby moon.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Tornadoes", travel_allowed: true)

pluto = Planet.create!(name: "Pluto", image: "https://images-assets.nasa.gov/image/PIA09113/PIA09113~orig.jpg", facts: "Pluto is about 3.6 billion miles away from the Sun and has five moons.", occupancy: Faker::Number.between(from: 200, to: 500), sights: "Heart-shaped glacier", travel_allowed: true)

### TRIPS
trip_one = Trip.create!(date: DateTime.new(2100, 6, 22), price: 5000, user: waverley, depart_planet_id: mars.id, arrival_planet_id: venus.id)

puts "🌎🪐🌕🌎🪐🌕🌎🪐🌕🌎🪐🌕"

#a trip is a joiner, needs to belong to the user and the planet.
#a planet has two different roles and we needed to state which model the departing_planet and destination_planet
#our belongs_to macro takes the departing_planet and makes the association 