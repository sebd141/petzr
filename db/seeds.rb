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

# puts "Creating User for testing"
# 1.times do (
# @bob = User.new({ email: "a@a.com", password: "lewagon", first_name: "Archi", last_name: "Saen", location: "Rue du try bara 2, 1380 Lasne", pet_sitters_status: false})
# file_bob = URI.open('https://res.cloudinary.com/sebd141/image/upload/v1653047425/kknxc2lusyegbjjjoqia.jpg')
# @bob.photo.attach(io: file_bob, filename: 'profile.jpeg', content_type: 'image/jpeg')
# @bob.save
# seb = User.new({ email: "b@b.com", password: "lewagon", pet_sitters_status: true, first_name: "Sébastien", last_name: "Dellis",  location: "Be Central, Brussels", price: 10, type_of_pet: ["cat", "dog", "bird"], type_of_service: ["walk", "feed"] })
# file_seb = URI.open(['https://res.cloudinary.com/sebd141/image/upload/v1654172150/rabit_kid1_wmlcdo.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654172150/human_rabbit2_xvpcee.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171972/femme_chien1_ec9xg5.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171971/femme_chat1_vcvj9m.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg'].sample)
# seb.photo.attach(io: file_seb, filename: 'profile.jpeg', content_type: 'image/jpeg')
# seb.save
# archi = User.new({ email: "archibaldsaen98@gmail.com", password: "lewagon", pet_sitters_status: true, first_name: "Archibald", last_name: "Khutse",  location: "Be Central, Brussels", price: 10, type_of_pet: ["cat", "dog", "bird"], type_of_service: ["walk", "feed"] })
# file_archi = URI.open(['https://res.cloudinary.com/sebd141/image/upload/v1654172150/rabit_kid1_wmlcdo.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654172150/human_rabbit2_xvpcee.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171972/femme_chien1_ec9xg5.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171971/femme_chat1_vcvj9m.jpg',
#   'https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg'].sample)
# archi.photo.attach(io: file_archi, filename: 'profile.jpeg', content_type: 'image/jpeg')
# archi.save
# )
# end
puts "Creating Pet sitters"

  1.times do archi = User.new(
    email: 'archibaldsaen98@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Archi',
    last_name: 'RobinHood',
    location: 'Rue du Vautour 7, 1000 Bruxelles',
    price: 7.5,
    type_of_pet: ["cat", "dog", "fish"],
    type_of_service: ["walk", "feed"],
    description: "I currently have a lovely border collie, she is very friendly and kind. I have been taking care of pets for many years and have a lot of experience.",
    short_desc: "Hello! I will take care of your pet! I love pets"
  )
  file = URI.open('https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg')

  archi.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  archi.save

  seb = User.new(
    email: 'sebastien.dellis@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Sebastien',
    last_name: 'Dellis',
    location: 'Be central, Bruxelles',
    price: 6.5,
    type_of_pet: ["dog", "cat"],
    type_of_service: ["walk", "feed"],
    description: "I currently have a lovely border, she is very friendly and kind. I have been taking care of pets for many years and have a lot of experience.",
    short_desc: "Hello! I only take care of dogs, be careful he might love more than you"
  )
  file = URI.open('https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg')

  seb.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  seb.save

  val = User.new(
    email: 'valsmets@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Val',
    last_name: 'Smets',
    location: 'Marollen 10, 1000 Bruxelles',
    price: 9,
    type_of_pet: ["dog", "snake"],
    type_of_service: ["medication", "feed"],
    description: "I am a pet sitter in my part time but work as a nurse, I would like to study animal behavior in the future.",
    short_desc: "Hello! I am a huge fan of snakes, I have 10 snakes back home"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654696072/production/close-up-portrait-of-woman-with-snake-on-her-neck-picture-id940895320_sdqdab.jpg')

  val.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  val.save

  antoine = User.new(
    email: 'antoinethiran@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Antoine',
    last_name: 'Thiran',
    location: 'Jourdan 10, 1000 Bruxelles',
    price: 9,
    type_of_pet: ["bird", "cat"],
    type_of_service: ["medication", "walk"],
    description: "From a very young age, I have always been fascinated by birds. Back home I have 20 different birds than unfortunatelly poop all around the house",
    short_desc: "Hi guys, I think you can see from my profile pic that I adore birds"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654696764/production/26200781-man-kissing-bird_ganceg.jpg')

  antoine.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  antoine.save

  mouton = User.new(
    email: 'alex@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Alex',
    last_name: 'Latule',
    location: 'Dailly 10, Schaerbeek',
    price: 8,
    type_of_pet: ["sheep", "dog"],
    type_of_service: %w(feed medication),
    description: "I own many sheep and my dream is to own my farm one day",
    short_desc: "Hi guys, my friends often call me 'mouton' but I love it"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654697035/production/senior-man-holding-baby-lamb-and-kissing-it-picture-id1221697224_mefzgr.jpg')

  mouton.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  mouton.save

  valentin = User.new(
    email: 'valentin@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Valentin',
    last_name: 'Duche',
    location: 'Saint-Gilles 10, Bruxelles',
    price: 8,
    type_of_pet: %w(dog snake),
    type_of_service: %w(feed walk),
    description: "I studied at university for 20 years and now want to convert to animal caring",
    short_desc: "My snakes and dogs love to play together"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654697253/production/back-view-young-man-with-dog-seaside_23-2148885061_azxzan.jpg')

  valentin.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  valentin.save

  augusto = User.new(
    email: 'augusto@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Augusto',
    last_name: 'Italia',
    location: 'Woluwe-Saint-Lambert, Bruxelles',
    price: 10,
    type_of_pet: %w(dog snake),
    type_of_service: %w(feed walk),
    description: "I currently working in the banking sector, in my free time I travel a lot",
    short_desc: "My wife does not want to have a dog"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654697686/production/f2d7e30d18e4b52ca9ee48c71b0010c6_jtf5ql.jpg')

  augusto.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  augusto.save
  end

#   file = URI.open(['https://res.cloudinary.com/sebd141/image/upload/v1654172150/rabit_kid1_wmlcdo.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654172150/human_rabbit2_xvpcee.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171972/femme_chien1_ec9xg5.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171971/femme_chat1_vcvj9m.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg'].sample)

 puts "Creating Pet owners"

1.times do @bob = User.new({ email: "a@a.com", password: "lewagon", first_name: "Archi", last_name: "Saen", location: "Rue du try bara 2, 1380 Lasne", pet_sitters_status: false})
  file_bob = URI.open('https://res.cloudinary.com/sebd141/image/upload/v1653047425/kknxc2lusyegbjjjoqia.jpg')
  @bob.photo.attach(io: file_bob, filename: 'profile.jpeg', content_type: 'image/jpeg')
  @bob.save
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
