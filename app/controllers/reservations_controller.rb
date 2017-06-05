class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(res_params)
  end

  def show
    @reservation.evaluation_i
  end



  private
  def res_params
    params.require(:evaluation).permit(:evaluation_id,:restaurant_id)
  end

end
