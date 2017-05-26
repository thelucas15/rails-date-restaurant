class RestaurantsController < ApplicationController

  def index
   # @restaurants = Restaurant.find_by_food_type(params[:food_type])
<<<<<<< HEAD
   # @food_type = params[:food_type "mexican"]
   @food_type = "Mexican"
   @date = params[:date]
   @start_time = params[:start_time]


    @restaurants = Restaurant.where(food_type: "mexican")
=======
    @food_type = params[:food_type]
    @date = params[:date]
    @start_time = params[:start_time]
    @restaurants = Restaurant.where(food_type: @food_type)
>>>>>>> d040dfbd727cca615b2afb9da07c43b7b35e143f
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def search

  end
end
