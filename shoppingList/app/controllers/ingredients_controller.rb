class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new # create
    @ingredients = Ingredient.all # get all ingredients
  end

  def create
    @ingredient = Ingredient.new(ingredients_params)
    if @ingredient.save # save into sql
      redirect_to "/ingredients/new/?recipe_id=" + @ingredient.recipe_id.to_s
    end
  end

  private
  def ingredients_params
    params.require(:ingredient).permit(:item, :amount, :unit, :recipe_id)
  end
end
