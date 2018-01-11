# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	Boat.create(name: "Boaty", containers: 100, location: "United States")
	Boat.create(name: "Lil Boat", containers: 110, location: "United States")
	Boat.create(name: "Olivia", containers: 150, location: "Panama")
	Job.create(description: "Deliver Gremlins", origin: "New York City", destination: "Hong Kong", cost: 15000, containers: 100)
	Job.create(description: "Deliver Pokemon", origin: "Los Angeles", destination: "Tokyo", cost: 20000, containers: 150)
	Job.create(description: "Deliver Nukes", origin: "Washington D.C.", destination: "Quito", cost: 50000, containers: 110)

