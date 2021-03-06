class RestaurantsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
       # @restaurants = Restaurant.find_by_food_type(params[:food_type])
       # @food_type = params[:food_type "mexican"]


    @food_type = params[:food_type]
    @date = params[:date]
    @start_time = params[:start_time]

    @range = params[:range]

    @user_location_address = params[:user_location_address]

    @user_location = params[:user_location]

    @user_location_requested = get_address

    # user_hash_pref = current_user.hash_pref.chopfjdklsj

    if @range == nil
      @restaurants = policy_scope(Restaurant).where(food_type: @food_type)
      @range = 7.5
    else
      @restaurants = policy_scope(Restaurant).near(@user_location_requested, @range.to_i).where(food_type: @food_type)
    end

    # if user_hash_pref.any?


    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      marker.infowindow render_to_string(partial: "/shared/restaurant_map_box", locals: { restaurant: restaurant })
      # marker.picture({
      #       url: render_to_string(partial: "/shared/restaurant_map_box", locals: { restaurant: restaurant }),
      #       width: 32,
      #       height: 32,
      #   })
    end

        # @restaurants = Restaurant.where(food_type: @food_type)
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @alert_message = "You are viewing #{@restaurant.name}"
    @range = params[:range]

    @hash_tag_pref = session[:hash_tag_pref]
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    @match_list = MatchList.new()
    @evaluation = Evaluation.new()
    @date = params[:date]
    @start_time = params[:start_time]
    @hash_tag_pref = current_user.hash_tag_pref
    #@user_in_list = @restaurant.match_lists.any? {|i| i.user == current_user}
    @user_match_list = MatchList.where(user_id: current_user.id, restaurant_id: @restaurant.id)
   # @count = MatchList.all.where(restaurant_id: Restaurant[params[:id]]).length
  end



  def get_address
    if @user_location == "My Location"
      @user_location_address
    else
      @user_location
    end
  end


  # def user_location_range
  #   @range = params[:range]
  #   @user_location_requested = get_address
  #   # loc = @user_location.split(",").map {|a| a.to_f } # [38.732656999999996, -9.1421262]
  #   @restaurants = Restaurant.near(@user_location_requested, @range.to_i).where(food_type: @food_type)
  # end

end
