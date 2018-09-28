class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
        @recipe.recipe_ingredients.build
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipes_path
    end

    private
        def recipe_params
            params.require(:recipe).permit(:name, 
            :user_id, 
            recipe_ingredients_attributes: [
            :recipe_id, 
            :ingredient_id, 
            :name
            ]
        )
        end
end
