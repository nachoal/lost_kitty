50.times do
  Pet.create(
    name: Faker::Games::Pokemon.name, address: Faker::Games::Pokemon.location
  )
end