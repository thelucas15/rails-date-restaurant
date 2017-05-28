class RestaurantsController < ApplicationController

  def index
   # @restaurants = Restaurant.find_by_food_type(params[:food_type])
   # @food_type = params[:food_type "mexican"]

    @food_type = params[:food_type]
    @date = session[:date] = params[:date]
    @start_time = session[:start_time] = params[:start_time]
    @restaurants = Restaurant.where(food_type: @food_type)
  end

  def show

    @hash_tag_pref = session[:hash_tag_pref]

    @restaurant = Restaurant.find(params[:id])
    @match_list = MatchList.new()
    @date = session[:date]
    @start_time = session[:start_time]
    @hash_tag_pref = current_user.hash_tag_pref
    #@user_in_list = @restaurant.match_lists.any? {|i| i.user == current_user}

    @user_match_list = MatchList.where(user_id: current_user.id, restaurant_id: @restaurant.id)

  end

  def search

  end
end
