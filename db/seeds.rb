# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


test_user_for_photo = User.first


test_user_for_photo.photo.attach(io: File.open('../app/assets/images/stairs.jpg'), filename: "photo_#{Time.now}")

puts "Adding users to the program"

adam_able = User.new(first_name: "adam", last_name: "able", location: "Tel Aviv", team: "Arsenal", email: 'adam@adam.com', password:"123456")
adam_able.save!

bob_blob = User.new(first_name: "bob", last_name: "blob", location: "London", team: "Man U", email: 'bob@bob.com', password:"123456" )
bob_blob.save!

cris_cringle = User.new(first_name: "cris", last_name: "cringle", location:"Artic", team: "Liverpool", email: 'cris@cris.com', password:"123456" )
cris_cringle.save!

double_dragon = User.new(first_name: "double", last_name: "dragon", location:"San Diego", team: "Tottenham", email: 'dragon@dragon.com', password:"123456")
double_dragon.save!

earl_easy = User.new(first_name: "earl", last_name:"easy", location:"Hamburg", team: "Arsenal", email: 'earl@earl.com', password:"123456")
earl_easy.save!

flavor_flav = User.new(first_name: "flavor", last_name:"flav", location:"Lima", team: "Leicester City", email: 'flav@flav.com', password:"123456")
earl_easy.save!

gary_gray = User.new(first_name: "gary", last_name:"gray", location:"Rio", team: "Chelsey", email: 'gary@gary.com', password:"123456")
earl_easy.save!

heidi_hottie = User.new(first_name: "heidi", last_name:"hottie", location:"Boston", team: "Arsenal", email: 'heidi@heidi.com', password:"123456")
earl_easy.save!

jazzy_jeff = User.new(first_name: "jazzy", last_name:"jeff", location:"Bangkok", team: "Chelsey", email: 'jeff@jeff.com', password:"123456")
earl_easy.save!

kate_kit = User.new(first_name: "kate", last_name:"kit", location:"Paris", team: "Manchester United", email: 'kate@kate.com', password:"123456")
earl_easy.save!

lazy_larry = User.new(first_name: "lazy", last_name:"larry", location:"Santiago", team: "Liverpool", email: 'larry@larry.com', password:"123456")
earl_easy.save!

mad_mary = User.new(first_name: "mad", last_name:"mary", location:"Moscow", team: "Aston Villa", email: 'mary@mary.com', password:"123456")
earl_easy.save!

neat_nate = User.new(first_name: "neat", last_name:"nate", location:"Capetown", team: "Chelsey", email: 'nate@nate.com', password:"123456")
earl_easy.save!

oscar_over = User.new(first_name: "oscar", last_name:"over", location:"Kathmandu", team: "Arsenal", email: 'oscar@oscar.com', password:"123456")
earl_easy.save!

pistol_pete = User.new(first_name: "pistol", last_name:"pete", location:"Leon", team: "Man City", email: 'pete@pete.com', password:"123456")



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
