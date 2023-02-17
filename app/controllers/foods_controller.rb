class FoodsController < ApplicationController
  before_action :set_food, only: %i[show edit update destroy]

  def index
    @foods = current_user.foods
  end

  def show
    @food
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(
      name: food_params[:name],
      measurement_unit: food_params[:measurement_unit],
      price: food_params[:price],
      quantity: food_params[:quantity],
      user_id: current_user.id
    )

    if @food.save
      redirect_to food_path(@food), notice: 'Food was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @food.destroy
      flash[:success] = 'Food was successfully deleted.'
    else
      flash[:error] = 'Food could not be deletd.'
    end
    redirect_to request.referrer
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:user_id, :name, :measurement_unit, :price, :quantity)
  end
end
