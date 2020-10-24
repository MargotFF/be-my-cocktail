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

puts 'Creating cocktails...'

mojito = Cocktail.create(name: 'Mojito')
pisco_sour = Cocktail.create(name: 'Pisco Sour')
bloody_mary = Cocktail.create(name: 'Bloody Mary')

puts 'Cocktails created!'

puts 'Destroying ingredients...'
Ingredient.destroy_all
puts 'Ingredients destroyed!'

puts 'Creating ingredients...'

rum = Ingredient.create(name: 'rum')
soda_water = Ingredient.create(name: 'soda water')
lemon = Ingredient.create(name: 'lemon')
ice = Ingredient.create(name: 'ice')
mint_leaves = Ingredient.create(name: 'mint leaves')
sugar = Ingredient.create(name: 'sugar')
pisco = Ingredient.create(name: 'pisco')
egg_white = Ingredient.create(name: 'egg white')
vodka = Ingredient.create(name: 'vodka')
tomato_juice = Ingredient.create(name: 'tomato juice')
tabasco = Ingredient.create(name: 'tabasco')
gin = Ingredient.create(name: 'gin')
tonic = Ingredient.create(name: 'tonic')

puts 'Ingredients created!'

puts 'Destroying doses...'
Dose.destroy_all
puts 'Doses destroyed!'

puts 'Creating doses...'

Dose.create(description: '5 cubes', cocktail: mojito, ingredient: ice)

puts 'Doses created!'
