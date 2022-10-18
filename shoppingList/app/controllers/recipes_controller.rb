class RecipesController < ApplicationController
    def new
    @recipe = Recipe.new # create
    @recipes = Recipe.all # get all students
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save # save into sql
      redirect_to "/ingredients/new/?id=" + @recipe.id.to_s
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :instructions)
  end
end
