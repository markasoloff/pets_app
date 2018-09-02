json.array! @pets.each do |pet|
  json.name pet.name
  json.species pet.species
end
