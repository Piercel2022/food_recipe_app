require 'rails_helper'
require_relative 'actions_helper_recipe_food'

RSpec.describe Food, type: :system do
  include ActionsHelperRecipeFood

  it 'I can see Quantity' do
    sign_up
    add_recipe
    click_link 'Add Ingredient'
    expect(page).to have_content('Quantity')
  end

end
