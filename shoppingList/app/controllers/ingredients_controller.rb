class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new # create
    @ingredients = Ingredient.all # get all ingredients
  end

  def create
    puts("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" + params[:recipe_id])
    @ingredient = Ingredient.new(ingredients_params)
    @ingredient.recipe_id = params[:recipe_id]
    if @ingredient.save # save into sql
      redirect_to new_ingredient_path
    end
  end

  private
  def ingredients_params
    params.require(:ingredient).permit(:item, :amount, :unit, :recipe_id)
  end
end
