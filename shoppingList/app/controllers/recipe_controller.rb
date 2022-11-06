class RecipeController < ApplicationController
  def new
    @recipe = Recipe.new # create
    @recipes = Recipe.all # get all students
  end

  def create
    @recipes = Recipe.new(recipe_params)
    if @Recipe.save # save into sql
      redirect_to new_recipe_path
    end
  end

  private
  def recipe_params
    params.require(:recipes).permit(:ingredients, :name)
  end
end
