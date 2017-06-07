class ReservationsController < ApplicationController

  def create
    @evaluation = Evaluation.find(params[:evaluation_id])

    @restaurant = Restaurant.find @evaluation.restaurant_id
    @reservation = Reservation.new(res_params)

    authorize @reservation

    if @reservation.save
        ReservationMailer.confirmation(@reservation.evaluation.selector, @reservation).deliver_now
        ReservationMailer.confirmation(@reservation.evaluation.selectee, @reservation).deliver_now

    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def new
    @evaluation = Evaluation.find(params[:evaluation_id])
    @restaurant = @evaluation.restaurant
    @reservation = Reservation.new()
    authorize @reservation

  end

  private
  def res_params
    params.require(:reservation).permit(:evaluation_id,:restaurant_id)
  end
end



