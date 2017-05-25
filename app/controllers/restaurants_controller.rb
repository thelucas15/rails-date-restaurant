class RestaurantsController < ApplicationController

  def index
   # @restaurants = Restaurant.find_by_food_type(params[:food_type])
    @food_type = params[:food_type]
    @date = params[:date]
    @start_time = params[:start_time]
    @restaurants = Restaurant.where(food_type: @food_type)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def search

  end
end
