class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients

    def ingredient_attributes=(ingredient)
        self.ingredient = Ingredient.find_or_create_by(name: ingredient.name)
        self.ingredient.update(ingredient)
    end
end
