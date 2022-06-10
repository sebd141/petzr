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
# (
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

  archi = User.new(
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
    location: '21 rue du printemps, Ixelles',
    price: 6.5,
    type_of_pet: %w(cat dog bird),
    type_of_service: %w(feed walk play),
    description: "I currently have a lovely golden retriever, she is very friendly and kind. I have been taking care of pets for many years and have a lot of experience.",
    short_desc: "Hello! I only take care of dogs, be careful he might love more than you"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1653489290/production/i71gqcxyxuk8iwc7dwrnn6oybvva.jpg')

  seb.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  seb.save

  val = User.new(
    email: 'valsmets@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Val',
    last_name: 'Smets',
    location: 'Marollen 32, 1000 Bruxelles',
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
    location: 'Jourdan 9, 1000 Bruxelles',
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
    location: 'Dailly 8, Schaerbeek',
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
    location: 'Saint-Gilles 13, Bruxelles',
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


  maxime = User.new(
    email: 'maxime@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Maxime',
    last_name: 'Federer',
    location: 'Cureghem 15, Anderlecht',
    price: 8,
    type_of_pet: %w(dog cat bird),
    type_of_service: %w(play walk medication),
    description: "Hi guys, I am an ex-proffesional tennis player. I live with my wife and two lovely cats. My wife and I love to have company around.",
    short_desc: "Your pet will be in safe hands with me, I have over 10 years of experience in pet setting"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654767158/production/cat-men-52_mwte2w.jpg')

  maxime.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  maxime.save

  jack = User.new(
    email: 'jack@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Jack',
    last_name: 'Chan',
    location: 'Terdelt, 1030 Schaerbeek',
    price: 11,
    type_of_pet: %w(dog),
    type_of_service: %w(feed walk medication),
    description: "Hi guys, I am a big fan of Real Madrid football team. I often play football with my kids in the garden, your dog will love to play with us",
    short_desc: "24 years old, living at my parents place with 3 dogs"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654769858/production/image_ydhos0.jpg')

 jack.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
 jack.save

  ted = User.new(
    email: 'ted@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Ted',
    last_name: 'James',
    location: '40, Molenbeek-Saint-Jean 1080',
    price: 9.5,
    type_of_pet: %w(snake bird),
    type_of_service: %w(feed walk medication),
    description: "Hi guys, I have been using this website for a while now. I usually only take care of cats and snakes but feel free to send me a message if you have another type of pet ;)",
    short_desc: "I live with my girlfriend in a small house, we have a nice garden where your pet will be able to live freely"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654767637/production/beautiful-man-snake-studio-260nw-538475650_sazhou.jpg')

  ted.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
  ted.save

 tony = User.new(
    email: 'tony@gmail.com',
    password: "lewagon",
    pet_sitters_status: true,
    first_name: 'Tony',
    last_name: 'Montana',
    location: 'Av. du Port 108, 1000 Bruxelles',
    price: 12,
    type_of_pet: %w(dog),
    type_of_service: %w(feed walk play),
    description: "Hi guys, I am from El Salvador. I moved to Belgium recently with my girlfriend. I working as a developer and love to go on walks in my free time",
    short_desc: "Hello, I am from El Salvador and love dogs. They are the best animals our there!"
  )
  file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654769563/production/58733864-enjoying-sun-man-is-caressing-yellow-labrador-retriever-young-man-sitting-on-the-hill-with-his-dog-a_rgfrjk.jpg')

 tony.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
 tony.save

 pierrick = User.new(
  email: 'pierrick@gmail.com',
  password: "lewagon",
  pet_sitters_status: true,
  first_name: 'Pierrick',
  last_name: 'Payet',
  location: '32, Sint-Joost, Saint-Josse-ten-Noode',
  price: 6,
  type_of_pet: %w(dog cat rabbit),
  type_of_service: %w(feed walk play),
  description: "Hi guys, I am from France. I moved to Belgium recently with my girlfriend. I used to work in a Casino and I have a rabbit called Edwige",
  short_desc: "Hi guys, my rabbit is lonely and would love some friends to play with!"
)
file = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654770319/production/man-holding-rabbit_lr07lv.jpg')

pierrick.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
pierrick.save
#   file = URI.open(['https://res.cloudinary.com/sebd141/image/upload/v1654172150/rabit_kid1_wmlcdo.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654172150/human_rabbit2_xvpcee.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171972/homme_chien2_ab94yo.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171972/femme_chien1_ec9xg5.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171971/femme_chat1_vcvj9m.jpg',
#     'https://res.cloudinary.com/sebd141/image/upload/v1654171971/homme_chien1_oadq64.jpg'].sample)

 puts "Creating Pet owners"

archi = User.new({ email: "archibald@gmail.com", password: "lewagon", first_name: "Archi", last_name: "Saen", location: "Rue du try bara 2, 1380 Lasne", pet_sitters_status: false})
file_archi = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1653489339/production/u6ogr9ijn6ehiylxn6bvjz1epbj8.jpg')
archi.photo.attach(io: file_archi, filename: 'profile.jpeg', content_type: 'image/jpeg')
archi.save
puts "Creating Pets"
  inja = Pet.create!(
    name: ('Inja'),
    breed: ('dog'),
    user: archi
  )

file_inja = URI.open('https://res.cloudinary.com/dlyi5kech/image/upload/v1654798798/production/injaa_n_ske8r6.jpg')
inja.photo.attach(io: file_inja, filename: 'profile.jpeg', content_type: 'image/jpeg')
inja.save


puts "Finished!"
