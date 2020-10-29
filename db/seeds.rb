# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying cocktails...'
Cocktail.destroy_all
puts 'Cocktails destroyed!'

puts 'Destroying ingredients...'
Ingredient.destroy_all
puts 'Ingredients destroyed!'

puts 'Destroying doses...'
Dose.destroy_all
puts 'Doses destroyed!'

puts 'Creating cocktails...'

mojito = Cocktail.create(name: 'Mojito', description: 'The Mojito might be Cuba’s most popular contribution to cocktail culture. The simple mix of white rum, lime juice, cane sugar, and soda (with muddled mint, please) is fresh and tropical, and it’s a classic.')
pisco_sour = Cocktail.create(name: 'Pisco Sour', description: 'The Pisco Sour, made with the Peruvian and Chilean national spirit pisco, along with lime, sugar, and an optional egg white, is appropriate for any occasion.')
bloody_mary = Cocktail.create(name: 'Bloody Mary', description: 'The Bloody Mary is as much an experience as a drink. The brunch-time staple is best enjoyed with a house mix of tomato juice, vodka, and spices.')
gin_tonic = Cocktail.create(name: 'Gin Tonic', description: "Classic and easy, the gin and tonic (or G&T) is light and refreshing. It's a simple mixed drink that requires just the two named ingredients and a hint of lime, all of which are natural flavor companions.")

puts 'Cocktails created!'

puts 'Creating ingredients...'

rum = Ingredient.create(name: 'rum')
soda_water = Ingredient.create(name: 'soda water')
lime = Ingredient.create(name: 'lime')
ice = Ingredient.create(name: 'ice')
mint_leaves = Ingredient.create(name: 'mint leaves')
sugar_syrup = Ingredient.create(name: 'sugar syrup')
pisco = Ingredient.create(name: 'pisco')
egg_white = Ingredient.create(name: 'egg white')
vodka = Ingredient.create(name: 'vodka')
tomato_juice = Ingredient.create(name: 'tomato juice')
tabasco = Ingredient.create(name: 'tabasco')
gin = Ingredient.create(name: 'gin')
tonic = Ingredient.create(name: 'tonic')

puts 'Ingredients created!'

puts 'Creating doses...'

Dose.create(description: '5 cubes', cocktail: mojito, ingredient: ice)

puts 'Doses created!'
