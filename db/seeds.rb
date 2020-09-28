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



waverley = User.create!(first_name:"Waverley", last_name:"Leung", age:100, email: "wavey@gmail.com", friendly_neighbor: true)
nunny = User.create!(first_name:"Nunny", last_name:"Reyes", age:101, email: "nunny@gmail.com", friendly_neighbor: true)


mars = Planet.create!(name: "Mars", facts: "The Red Planet", occupancy:4, sights: "Mars Rover", travel_allowed: true)
venus = Planet.create!(name: "Venus", facts: "Cool", occupancy:40, sights: "Venus moons", travel_allowed: true)



trip_two = Trip.create!(date: DateTime.new(2015, 6, 22), price: 5000, user: waverley, depart_planet_id: mars.id, arrival_planet_id: venus.id)


#not saving to our db
#trip_one exists when searched but no database


#a trip is a joiner, needs to belong to the user and the planet.
#a planet has two different roles and we needed to state which model the departing_planet and destination_planet
#our belongs_to macro takes the departing_planet and makes the association 