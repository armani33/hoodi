# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

# Response.destroy_all
User.destroy_all


# Information cards creation
tom = User.new(
  first_name: "Tom",
  last_name: "George",
  email: "Tom@hoodi",
  password: "azazaz",
  address: "5258 Rue Saint-André, Montreal, Québec, Canada",
  avatar: "http://blg.com/en/Our-People/PublishingImages/w/Wray-George.jpg"
  )
tom.save!
vic = User.new(
  first_name: "vic",
  last_name: "clinck",
  email: "vic@hoodi",
  password: "azazaz",
  address: "5007 Avenue Christophe-Colomb, Montreal, Québec, Canada",
  avatar: "https://www.unbc.ca/sites/default/files/styles/people_profile/public/people/8195/winwood-dr.paul/winwood-paul.jpg?itok=6KgQoXcT"
  )
vic.save!
olga = User.new(
  first_name: "olga",
  last_name: "kepasi",
  email: "olga@hoodi",
  password: "azazaz",
  address: "5141 Rue Garnier, Montreal, Québec, Canada",
  avatar: "https://images.pexels.com/photos/638700/pexels-photo-638700.jpeg?auto=compress&cs=tinysrgb&h=350"
  )
olga.save!

information = Information.new(
  title: "Test stor info",
  content: "work in the area"

  )
information.user = tom
information.save!

event = Event.new(
  title: "test event stor",
  content: "want to organise a game"
  )
event.user = vic
event.save!

favour = Favour.new(
  title: "test favor stor",
  content: "I want to share a ride to the city center"
  )
favour.user = olga
favour.save!

# information = Information.new(
#   title: "Italian restaurant",
#   content: "New italian restaurant opened",
#   picture: "./asset/images/info_test.png",
#   solved: false,

#   )
# information.user = user
# information.save!

# event = Event.new(
#   title: "Party",
#   content: "I organise a party at home"
#   )
# event.user = user
# event.save!

# favour = Favour.new(
#   title: "need a screwdriver",
#   content: "I don't have tool"
#   )
# favour.user = user
# favour.save!


# information = Information.new(
#   title: "New restaurant",
#   content: "New restaurant",
#   picture: "./asset/images/info_test.png",
#   solved: false,

#   )
# information.user = user
# information.save!

puts 'end creation database'
