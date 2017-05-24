class RestaurantsController < ApplicationController

  def index
   # @restaurants = Restaurant.find_by_food_type(params[:food_type])
    @restaurants = Restaurant.where(food_type: "mexican")
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @match_list = MatchList.new()
  end

  def search

  end
end
