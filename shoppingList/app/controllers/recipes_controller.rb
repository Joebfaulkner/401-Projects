class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new # create
    @recipes = Recipe.all # get all recipes
  end

  def create
    if(recipe_params[:recipe_id] != nil)
      id = recipe_params[:recipe_id]
      @recipe = Recipe.all.find(id)
      @recipe.name = recipe_params[:name]
      @recipe.instructions = recipe_params[:instructions]
      @recipe.save
    else
      puts(recipe_params[:recipe_id])
      @recipe = Recipe.new(recipe_params)
      if @recipe.save # save into sql
        redirect_to "/ingredients/new/?recipe_id=" + @recipe.id.to_s
      end
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :id, :recipe_id)
  end
end
