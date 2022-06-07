# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
require 'faker'
require "open-uri"

puts "Cleaning database..."

  Review.destroy_all
  Contract.destroy_all
  Post.destroy_all
  Pet.destroy_all
  User.destroy_all

puts "Creating User for testing"
1.times do (
@bob = User.new({ email: "a@a.com", password: "lewagon", first_name: "Archi", last_name: "Saen", location: "Rue du try bara 2, 1380 Lasne", pet_sitters_status: false})
file_bob = URI.open('https://res.cloudinary.com/sebd141/image/upload/v1653047425/kknxc2lusyegbjjjoqia.jpg')
@bob.photo.attach(io: file_bob, filename: 'profile.jpeg', content_type: 'image/jpeg')
@bob.save
seb = User.new({ email: "b@b.com", password: "lewagon", pet_sitters_status: true, first_name: "Sébastien", last_name: "Dellis",  location: "Be Central, Brussels", price: 10, type_of_pet: ["cat", "dog", "bird"], type_of_service: ["walk", "feed"] })
file_seb = URI.open(['https://res.cloudinary.com/sebd141/image/upload/v1654172150/rabit_kid1_wmlcdo.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654172150/human_rabbit2_xvpcee.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171972/femme_chien1_ec9xg5.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171971/femme_chat1_vcvj9m.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg'].sample)
seb.photo.attach(io: file_seb, filename: 'profile.jpeg', content_type: 'image/jpeg')
seb.save
archi = User.new({ email: "archibaldsaen98@gmail.com", password: "lewagon", pet_sitters_status: true, first_name: "Archibald", last_name: "Khutse",  location: "Be Central, Brussels", price: 10, type_of_pet: ["cat", "dog", "bird"], type_of_service: ["walk", "feed"] })
file_archi = URI.open(['https://res.cloudinary.com/sebd141/image/upload/v1654172150/rabit_kid1_wmlcdo.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654172150/human_rabbit2_xvpcee.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171972/femme_chien1_ec9xg5.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171971/femme_chat1_vcvj9m.jpg',
  'https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg'].sample)
archi.photo.attach(io: file_archi, filename: 'profile.jpeg', content_type: 'image/jpeg')
archi.save
)
end
puts "Creating Pet sitters"

15.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "lewagon",
    pet_sitters_status: true,
    first_name: ['Seb', 'Val', 'Archi', 'Antoine', 'Nikos', 'Jack', 'Valentin', 'Alexandre'].sample,
    last_name: ['RobinHood', 'Pocaonthas', 'Simba', 'Snow', 'Targaryan', 'Conor', 'Smith', 'Dupont'].sample,
    location: ['Be Central, Brussels', 'Rue Neuve, 1000 Brussels', 'rue du progrès, 100, Brussels', 'Bozar, 1000 Brussels', 'Avenue louise 86, Brussels', 'Atomium, Brussels', 'Avenue Louise 203, 1050 Brussels', 'Café bota, brussels'].sample,
    price: [10.5, 5.5, 6.5, 7.5].sample,
    type_of_pet: ["cat", "dog", "bird", "fish", "snake"].sample(rand(2..4)),
    type_of_service: ["walk", "feed", "medication"].sample(rand(2..3)),
    description: Faker::Lorem.paragraph,
    short_desc: ["Hello! I will take care of your pet! I love pet since 1O years", "Hello, I'm 25 years old. I love pet & I want to earn pocket money by taking care of your pet"].sample
  )
  file = URI.open(['https://res.cloudinary.com/sebd141/image/upload/v1654172150/rabit_kid1_wmlcdo.jpg',
                    'https://res.cloudinary.com/sebd141/image/upload/v1654172150/human_rabbit2_xvpcee.jpg',
                    'https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg',
                    'https://res.cloudinary.com/sebd141/image/upload/v1654171972/femme_chien1_ec9xg5.jpg',
                    'https://res.cloudinary.com/sebd141/image/upload/v1654171971/femme_chat1_vcvj9m.jpg',
                    'https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg'].sample)

  user.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  user.save
end
puts "Creating Pets"

15.times do
  Pet.create!(
    name: ['bobby', 'val', 'sebby', 'tony', 'pierouk'].sample,
    breed: ['cat', 'dog', 'bird'].sample,
    user: @bob
  )
end


puts "Finished!"
