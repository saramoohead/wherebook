# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all
# This will delete everything before if you've messed up and want to start over

Place.create(booktitle: "Name of the Star", address: "Whitechapel", description: "Rory is outside a murder scene", latitude: "51.521944", longitude: "-0.071667")
Place.create(booktitle: "Maggot Moon", address: "Muswell Hill", description: "where Standish breaks in to the maggot farm", latitude: "51.591897", longitude: "-0.142789")
