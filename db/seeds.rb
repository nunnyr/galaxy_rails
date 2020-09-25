# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Planet.destroy_all
Trip.destroy_all

User.reset_pk_sequence
Planet.reset_pk_sequence
Trip.reset_pk_sequence


waverley = User.create(first_name:"Waverley", last_name:"Leung", age:100, email: "wavey@gmail.com", friendly_neighbor: true)
nunny = User.create(first_name:"Nunny", last_name:"Reyes", age:101, email: "nunny@gmail.com", friendly_neighbor: true)


mars = Planet.create(name: "Mars", facts: "The Red Planet", occupancy:4, sights: "Mars Rover", travel_allowed: true)
venus = Planet.create(name: "Venus", facts: "Cool", occupancy:40, sights: "Venus moons", travel_allowed: true)



trip_one = Trip.create(date: DateTime.new(2015, 6, 22), price: 5000, user: waverley, departing_planet_id: Planet.all.sample.id, destination_planet_id: Planet.all.sample.id)


#date is not showing up
