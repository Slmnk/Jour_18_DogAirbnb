# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# supprime toutes les entrées
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
Stroll.destroy_all

# créé 10 cities
10.times do
  city = City.create!(name: Faker::Address.unique.city)
end

# Créé 10 dogs
10.times do
  dog = Dog.create!(name: Faker::Dog.unique.name, city_id: City.all.sample.id)
end

#Créé 5 dogsitters
10.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.unique.name, city_id: City.all.sample.id)
end

# créé 10 strolls
10.times do
  stroll = Stroll.create!(name: Faker::Zelda.unique.location, dog_id: Dog.all.sample.id , dogsitter_id: Dogsitter.all.sample.id )
end
