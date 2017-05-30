class RestaurantsController < ApplicationController

  def index
   # @restaurants = Restaurant.find_by_food_type(params[:food_type])
   # @food_type = params[:food_type "mexican"]

    @food_type = params[:food_type]
    @date = session[:date] = params[:date]
    @start_time = session[:start_time] = params[:start_time]
    @range = session[:range] = params[:range]
    @user_location_requested = get_address
    @restaurants = Restaurant.near(@user_location_requested, @range.to_i).where(food_type: @food_type)

    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

    # @restaurants = Restaurant.where(food_type: @food_type)
  end

  def show

    @hash_tag_pref = session[:hash_tag_pref]
    @range = session[:range] = params[:range]
    @food_type = params[:food_type]
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

  def get_address
    if params[:user_location] == "My Location"
      location_requested = params[:user_location_address]
    else
      location_requested = params[:user_location]
    end
  end
  # def user_location_range
  #   @range = params[:range]
  #   @user_location_requested = get_address
  #   # loc = @user_location.split(",").map {|a| a.to_f } # [38.732656999999996, -9.1421262]
  #   @restaurants = Restaurant.near(@user_location_requested, @range.to_i).where(food_type: @food_type)
  # end
end
