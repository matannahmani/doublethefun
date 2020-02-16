# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Adding seeds to the program"

adam_able = User.new(first_name: "adam", last_name: "able", location: "Tel Aviv", team: "Arsenal")
adam_adam.save!

bob_blob = User.new(first_name: "bob", last_name: "blob", location: "London", team: "Man U" )
bob_blob.save!

cris_cringle = User.new(first_name: "cris", last_name: "cringle", location:"Artic", team: "Liverpool")
cris_cringle.save!

double_dragon = User.new(first_name: "double", last_name: "dragon", location:"Slums", team: "Tottenham")
double_dragon.save!

earl_easy = User.new(first_name: "earl", last_name:"easy", location:"Hamburg", team: "Chelsey")
earl_easy.save!

puts "You added 5 seeds!"



