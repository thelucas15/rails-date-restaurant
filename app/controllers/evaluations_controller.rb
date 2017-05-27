class EvaluationsController < ApplicationController

  def new
    @evaluation = Evaluation.new()


  end

  def show
    @selector = session[]
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.match_list = match_list_id
    @evaluation.restaurant_id = params[:restaurant_id].to_i
      if @selector == true && @selectee == true
          @reservation = Reservation.new()

        redirect_to match_list_evaluation_path(match_list_id)
      else
        redirect_to match_list_evaluation_path(match_list_id), alert: "could not make a Dinner date"
      end

  end

  private
  def evaluation_params
    params.require(:evaluation).permit(:selector,:selectee)
  end

end

