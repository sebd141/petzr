# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
require 'faker'

puts "Cleaning database..."
if Rails.env.development?
  Review.destroy_all
  Contract.destroy_all
  Post.destroy_all
  Pet.destroy_all
  User.destroy_all
end

puts "Creating User"

bob = User.create({ email: "a@a.com", password: "lewagon", pet_sitters_status: false})
seb = User.create({ email: "b@b.com", password: "lewagon", pet_sitters_status: true, first_name: "Sébastien", last_name: "Dellis",  location: "Be Central, Brussels", price: 10, type_of_pet: ["cat", "dog", "bird"], type_of_service: ["walk", "feed"] })
# seb = User.create({email: "sebastien.dellis@gmail.com", password: "lewagon"})

# puts "Creating Toilets.."
# 10.times do
#   Toilet.create!(
#     name: Faker::Name.middle_name,
#     location: ['34C, Rue de Thisnes, 4280 Liège', '50, Sint-Barbarastraat, 3920 Lommel', '146, Rue de la Misbour, 6637 Bastogne', '199, Tuinstraat, 8953 Ypres', '41, Rue de la Platinerie, 5660 Philippeville','5A, Groenedijkstraat, 8460 Ostende', '126, Meersveldweg, 9340 Alost', '178, Merktweg, 9310 Alost', '77, Flère, 4860 Pepinster', '16, Rue du Hameau, 7951 Ladeuze'].sample,
#     description: Faker::Lorem.paragraph,
#     price: Faker::Number.number(digits: 2),
#     category: ['urinal', 'washing toilet', 'Turkish toilet', 'dry toilet', 'chemical toilet'].sample,
#     user: bob,
#     gender: [0, 1, 2, 3].sample
#   )
# end

puts "Creating Pet sitters"

15.times do
  User.create!(
    email: Faker::Internet.email,
    password: "lewagon",
    pet_sitters_status: true,
    first_name: ['Seb', 'Val', 'Archi', 'Antoine', 'Nikos', 'Jack', 'Valentin', 'Alexandre'].sample,
    last_name: ['RobinHood', 'Pocaonthas', 'Simba', 'Snow', 'Targaryan', 'Conor', 'Smith', 'Dupont'].sample,
    location: ['Be Central, Brussels', 'Rue Neuve, 1000 Brussels', 'Boulevard de l industrie, 100, Brussels', 'Bozar, 1000 Brussels', 'Avenue louise 86, Brussels', 'Atomium, Brussels', 'Avenue Louise 203, 1050 Ixells'].sample,
    price: [10.5, 5.5, 6.5, 7.5].sample,
    type_of_pet: ["cat", "dog", "bird", "fish", "snake"].sample,
    type_of_service: ["walk", "feed", "medication"].sample,
  )
end
puts "Creating Pets"

15.times do
  Pet.create!(
    name: ['bobby', 'val', 'sebby', 'tony', 'pierouk'].sample,
    breed: ['cat', 'dog', 'bird'].sample,
    user: bob
  )
end


puts "Finished!"
