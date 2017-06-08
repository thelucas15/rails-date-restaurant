class ReservationsController < ApplicationController

  def create
    @evaluation = Evaluation.find(params[:evaluation_id])

    @restaurant = Restaurant.find @evaluation.restaurant_id
    @reservation = Reservation.new(res_params)
    @reservation.restaurant = @restaurant
    @reservation.evaluation = @evaluation

    authorize @reservation

    if @reservation.save
        # ReservationMailer.confirmation(@reservation.evaluation.selector, @reservation).deliver_now
        # ReservationMailer.confirmation(@reservation.evaluation.selectee, @reservation).deliver_now
        redirect_to evaluation_reservation_path(@evaluation, @reservation)
    else
      render :new
    end

  end

  def show
    @evaluation = Evaluation.find(params[:evaluation_id])
    @reservation = Reservation.find(params[:id])
    @restaurant = Restaurant.find @evaluation.restaurant_id
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



