class HomeController < ApplicationController
  def menu
    @recipes = Recipe.all # get all recipes
    @ingredients = Ingredient.all # get all ingredients
  end

  def delete(recipe_id)
    recipe = Recipe.all.find(recipe_id)
    recipe.delete
    ingredients = ingredients.all.where(:recipe_id => recipe_id)
    for item in ingredients
      item.delete
      item.save
    end
    if(recipe.save)
      redirect_to "home/menu"
    end
  end
end
