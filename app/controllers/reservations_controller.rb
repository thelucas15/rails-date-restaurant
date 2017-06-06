class ReservationsController < ApplicationController

  def create
    @evaluation = Evaluation.find(params[:evaluation_id])
    @reservation = Reservation.new(res_params)
    @restaurant.match_list = @evaluation.match_list
    @restaurant.evaluation = @evaluation
    ReservationMailer.confirmation(@reservation.evaluation.selector, @reservation).deliver_now
    ReservationMailer.confirmation(@reservation.evaluation.selectee, @reservation).deliver_now
    @reservation.save
  end

  def show
    @reservation.evaluation_i
  end

  private
  def res_params
    params.require(:evaluation).permit(:evaluation_id,:restaurant_id)
  end

end
