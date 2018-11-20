# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

# Response.destroy_all
Event.destroy_all
Favour.destroy_all
Information.destroy_all
User.destroy_all

# Information cards creation
user = User.new(
  first_name: "Tom",
  last_name: "George",
  email: "Tom@hoodi",
  password: "000000"
  )
user.save!

information = Information.new(
  title: "Test stor info",
  content: "work in the area",
  picture: "./asset/images/info_test.png",
  solved: false,

  )
information.user = user
information.save!

event = Event.new(
  title: "test event stor",
  content: "want to organise a game"
  )
event.user = user
event.save!

favour = Favour.new(
  title: "test favor stor",
  content: "I want to share a ride to the city center"
  )
favour.user = user
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
