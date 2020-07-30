# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all


 10.times do
  city = City.create!(name:Faker::Address.city, zip_code:Faker::Address.zip_code)
  user = User.create!(first_name: Faker::Name.first_name, email: Faker::Internet.email, 
  last_name: Faker::Name.last_name, age: Faker::Number.between(from: 15, to: 100), description: Faker::Lorem.sentence(word_count: 12))
  city.users
  user.save
end

20.times do
  gossip = Gossip.create!(title: Faker::Verb.past_participle, content:Faker::Lorem.sentences(number: 1, supplemental: true))
end
puts "values created: 10 city, 10 users, 20 gossips "