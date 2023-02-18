require 'rails_helper'
require_relative 'actions_helper_food'

RSpec.describe Food, type: :system do
  include ActionsHelperFood
  it 'I can see the foods title' do
    sign_up
    expect(page).to have_content('Foods')
  end


  it 'I can see foods when I add a food' do
    sign_up
    add_food
    visit foods_path
    expect(page).to have_content('Meat')
  end

end
