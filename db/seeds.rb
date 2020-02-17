# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Adding users to the program"

adam_able = User.new(first_name: "adam", last_name: "able", location: "Tel Aviv", team: "Arsenal", email: 'adam@adam.com', password:"123456")
adam_able.save!

bob_blob = User.new(first_name: "bob", last_name: "blob", location: "London", team: "Man U", email: 'bob@bob.com', password:"123456" )
bob_blob.save!

cris_cringle = User.new(first_name: "cris", last_name: "cringle", location:"Artic", team: "Liverpool", email: 'cris@cris.com', password:"123456" )
cris_cringle.save!

double_dragon = User.new(first_name: "double", last_name: "dragon", location:"Slums", team: "Tottenham", email: 'dragon@dragon.com', password:"123456")
double_dragon.save!

earl_easy = User.new(first_name: "earl", last_name:"easy", location:"Hamburg", team: "Chelsey", email: 'earl@earl.com', password:"123456")
earl_easy.save!

puts "You added #{User.all.count} users!"


puts "Adding events to the program"

nld = Event.create!( name: 'North London Derby', description: 'derby', location: 'London', team: 'Arsenal', user_id: adam_able.id )
old_firm = Event.create!( name: 'Old Firm', description: 'derby', location: 'Glasgow', team: 'Man U', user_id: bob_blob.id )
liv_derby = Event.create!( name: 'Mersyside Derby', description: 'derby', location: 'Liverpool', team: 'Liverpool', user_id: cris_cringle.id )


puts "You added #{Event.all.count} events!"

puts 'Adding attendances to the program'

buddy1 = Attendance.create!(event_id: nld.id, user_id: double_dragon.id)
buddy2 = Attendance.create!(event_id: old_firm.id, user_id: earl_easy.id)

puts "You added #{Attendance.all.count} attendances"
