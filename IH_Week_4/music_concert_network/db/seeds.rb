# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concertA = Concert.create(artist: "Pink Floyd", venu: "Boston Garden", city: "Boston", date: Time.now + 3.months, price: 100.00, description: "Last Show Ever (really)")
concertB = Concert.create(artist: "Led Zeppelin", venu: "Madison Square Garden", city: "New York", date: Time.now + 2.weeks, price: 70.00, description: "Extra Shows Added")
concertC = Concert.create(artist: "The Rolling Stones", venu: "The Fillmore", city: "Miami Beach", date: Time.now + 3.weeks, price: 35.00, description: "Special Guest")
