class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(res_params)
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def new
    @evaluation = Evaluation.find(params[:evaluation_id])
    @restaurant = @evaluation.restaurant
    @reservation = Reservation.new
    authorize @reservation
  end

  private
  def res_params
    params.require(:evaluation).permit(:evaluation_id,:restaurant_id)
  end
end


  #private
  #def products_layout
  #@current_user.special? ? "special" : "products"
