class ShoppingController < ApplicationController
  def list
    @ingredients = Ingredient.all # get all ingredients
  end
end
