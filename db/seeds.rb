# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create(name: "John")
chelsea = User.create(name: "Chelsea")

pasta = Recipe.create(name: "pasta", user_id: 1)
quiche = Recipe.create(name: "quiché", user_id: 2)
meatloaf = Recipe.create(name: "meatloaf", user_id: 2)
pizza = Recipe.create(name: "pizza", user_id: 1)

cheese = Ingredient.create(name: "cheese")
pepperoni = Ingredient.create(name: "pepperoni")
red_sauce = Ingredient.create(name: "red sauce")

RecipeIngredient.create(name: "cheese", recipe_id: 1, ingredient_id: 1)
RecipeIngredient.create(name: "pepperoni", recipe_id: 4, ingredient_id: 2)
RecipeIngredient.create(name: "cheese", recipe_id: 4, ingredient_id: 3)

