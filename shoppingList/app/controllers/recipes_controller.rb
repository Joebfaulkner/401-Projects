class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new # create
    @recipes = Recipe.all # get all recipes
    @ingredients = Ingredient.all # get all ingredients
  end

  def create
    if(recipe_params[:recipe_id] != nil)
      id = recipe_params[:recipe_id]
      @recipe = Recipe.all.find(id)
      @recipe.name = recipe_params[:name]
      @recipe.instructions = recipe_params[:instructions]
      @recipe.save
    else
      @recipe = Recipe.new(:name => recipe_params[:name], :instructions => recipe_params[:instructions])
      if @recipe.save # save into sql
        redirect_to "/ingredients/new/?recipe_id=" + @recipe.id.to_s
      end
    end
  end

  def show
    if(params[:id] != nil)
      id = params[:id]
      @recipe = Recipe.all.find(id)
      @ingredients = Ingredient.where(recipe_id: params[:recipe_id]).all
    else
      @recipe = Recipe.new
      @ingredients = Ingredient.new
    end
    @ingredients.destroy_all
    @recipe.destroy
    redirect_to "/home/menu"
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :instructions, :id, :recipe_id, :authenticity_token, :commit)
    end
end
