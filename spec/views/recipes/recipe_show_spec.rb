require 'rails_helper'
require_relative 'actions_helper_recipe'

RSpec.describe Recipe, type: :system do
  include ActionsHelperRecipe
  it 'I can see the recipe name' do
    sign_up
    add_recipe
    expect(page).to have_content('Recipe Name')
  end

  it 'I can see the Add ingredient button' do
    sign_up
    add_recipe
    expect(page).to have_content('Add Ingredient')
  end

  it 'When I click on Add ingredient, it redirects me to recipe foods new page' do
    sign_up
    add_recipe
    click_link 'Add Ingredient'
    expect(page).to have_current_path(new_recipe_food_path(recipe_id: Recipe.first))
  end
end
