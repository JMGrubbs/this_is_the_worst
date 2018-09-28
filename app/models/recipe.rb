class Recipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    accepts_nested_attributes_for :recipe_ingredients


    def recipe_params
        params.require(:recipe).permit(
    :name, 
    :user_id,
    recipe_ingredients_attributes: [
      :recipe_id,
      :ingredient_id,
      :name,
        ]
    )
    end 
end
