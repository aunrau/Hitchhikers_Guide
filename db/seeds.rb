Guide.destroy_all
Planet.destroy_all

=begin
200.times do
  planet = Planet.create(planet: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.planet,
                        location: Faker::Movies::HitchhikersGuideToTheGalaxy.location)

  planet.guides.create(character: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
                        specie: Faker::Movies::HitchhikersGuideToTheGalaxy.specie,
                        quote: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
end
=end
20.times do
  planet = Planet.create(planet: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.planet,
                        location: Faker::Movies::HitchhikersGuideToTheGalaxy.location)
end

200.times do
  offset = rand(Planet.count)
  planet = Planet.offset(offset).first

  guide = Guide.new(character: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
    specie: Faker::Movies::HitchhikersGuideToTheGalaxy.specie,
    quote: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)

    planet.guides << guide
end

puts "All the Planets: #{Planet.count}"
puts "All the Characters: #{Guide.count}"
