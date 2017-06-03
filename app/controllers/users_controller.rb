class UsersController < ApplicationController
  def create
  end

  def edit
  end

  def show
  end

  def index
    @users = policy_scope(User).where(restaurant_id: @restaurant.id )
  end



end
