# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

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

mojito = Cocktail.create(name: 'Mojito', description: 'The Mojito might be Cuba’s most popular contribution to cocktail culture. The mojito is the epitome of the refreshing cocktail, stripped down to just the bare essentials of rum, lime juice, sugar, soda water, and mint. Each ingredient is seemingly specifically selected to cure hot weather-induced pangs of thirst.')
pisco_sour = Cocktail.create(name: 'Pisco Sour', description: "Peru’s and Chile's signature drink, the famous Pisco Sour has a taste quite unlike any other. It’s a curious mix of sharp tang and sweet, and its texture changes from cloudlike foam to icy cold in the time it takes for the liquid to break through its wall of raw egg white.")
bloody_mary = Cocktail.create(name: 'Bloody Mary', description: 'The Bloody Mary is a vodka-soaked nutritional breakfast and hangover cure all in one. What else could you ask for? This brunch-time staple is best enjoyed with a house mix of tomato juice, vodka, and spices. It is as much an experience as a drink.')
gin_tonic = Cocktail.create(name: 'Gin Tonic', description: "Classic and easy, the gin and tonic (or G&T) is light and refreshing. It's a simple mixed drink that requires just the two named ingredients and a hint of lime, all of which are natural flavor companions. This is a great choice for happy hour, dinner, or anytime you simply want an invigorating beverage.")
pina_colada = Cocktail.create(name: 'Piña Colada', description: 'The Piña Colada is a sweet, creamy, frozen drink bursting with fruity flavors from pineapple and coconut.  The flavors are so vibrant that they will transport you from your porch to a lounge chair at a tropical beach!')
margarita = Cocktail.create(name: 'Margarita', description: "There is no mystery to this iconic drink, and the secret to a great margarita is its simplicity. The only ingredients you need are tequila, triple sec, and lime juice. Once you find an ideal balance of flavor, you'll realize just how delicious a fresh margarita is.")

puts 'Cocktails created!'

puts 'Creating ingredients...'

# rum = Ingredient.create(name: 'rum')
# soda_water = Ingredient.create(name: 'soda water')
# lime = Ingredient.create(name: 'lime')
ice = Ingredient.create(name: 'ice')
mint_leaves = Ingredient.create(name: 'mint leaves')
# sugar_syrup = Ingredient.create(name: 'sugar syrup')
# pisco = Ingredient.create(name: 'pisco')
egg_white = Ingredient.create(name: 'egg white')
# vodka = Ingredient.create(name: 'vodka')
# tomato_juice = Ingredient.create(name: 'tomato juice')
tabasco = Ingredient.create(name: 'tabasco')
# gin = Ingredient.create(name: 'gin')
tonic = Ingredient.create(name: 'tonic')
# pineapple_juice = Ingredient.create(name: 'pineapple juice')
coconut_cream = Ingredient.create(name: 'coconut cream')
# tequila = Ingredient.create(name: 'tequila')
# triple_sec = Ingredient.create(name: 'triple sec')

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data_hash = JSON.parse(open(url).read)

data_hash['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end




puts 'Ingredients created!'

puts 'Creating doses...'

Dose.create(description: 'large handful', cocktail: mojito, ingredient: ice)
Dose.create(description: '1/2', cocktail: mojito, ingredient_id: 36)
Dose.create(description: '20 ml', cocktail: mojito, ingredient_id: 55)
Dose.create(description: '6', cocktail: mojito, ingredient: mint_leaves)
Dose.create(description: '60 ml', cocktail: mojito, ingredient_id: 46)
Dose.create(description: 'to top', cocktail: mojito, ingredient_id: 39)

Dose.create(description: 'large handful', cocktail: pisco_sour, ingredient: ice)
Dose.create(description: '30 ml', cocktail: pisco_sour, ingredient_id: 36)
Dose.create(description: '20 ml', cocktail: pisco_sour, ingredient_id: 55)
Dose.create(description: '1', cocktail: pisco_sour, ingredient: egg_white)
Dose.create(description: '50 ml', cocktail: pisco_sour, ingredient_id: 95)

Dose.create(description: 'large handful', cocktail: bloody_mary, ingredient: ice)
Dose.create(description: '1/2', cocktail: bloody_mary, ingredient_id: 36)
Dose.create(description: '3 dashes', cocktail: bloody_mary, ingredient: tabasco)
Dose.create(description: '40 ml', cocktail: bloody_mary, ingredient_id: 28)
Dose.create(description: '120 ml', cocktail: bloody_mary, ingredient_id: 67)

Dose.create(description: 'large handful', cocktail: gin_tonic, ingredient: ice)
Dose.create(description: 'a wedge', cocktail: gin_tonic, ingredient_id: 62)
Dose.create(description: '50 ml', cocktail: gin_tonic, ingredient_id: 9)
Dose.create(description: '150 ml', cocktail: gin_tonic, ingredient: tonic)

Dose.create(description: 'large handful', cocktail: pina_colada, ingredient: ice)
Dose.create(description: '60 ml', cocktail: pina_colada, ingredient_id: 46)
Dose.create(description: '120 ml', cocktail: pina_colada, ingredient_id: 53)
Dose.create(description: '60 ml', cocktail: pina_colada, ingredient: coconut_cream)

Dose.create(description: 'large handful', cocktail: margarita, ingredient: ice)
Dose.create(description: '25 ml', cocktail: margarita, ingredient_id: 36)
Dose.create(description: '50 ml', cocktail: margarita, ingredient_id: 27)
Dose.create(description: '20 ml', cocktail: margarita, ingredient_id: 15)

puts 'Doses created!'
