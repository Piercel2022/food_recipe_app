class ShoppingListsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:id])
  end
end
