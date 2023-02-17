Rails.application.routes.draw do
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipe_foods/destroy'
  get 'recipe_foods/edit'
  get 'recipe_foods/update'
  resources :recipes
  resources :foods
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  # Defines the root path route ("/")
  root "foods#index"
end
