require 'faker'

puts 'Creating 10 fake ingredients...'
10.times do
  ingredient = Ingredient.new(
    name:    Faker::Food.ingredient,
  )
  ingredient.save!
end
puts 'Finished!'
