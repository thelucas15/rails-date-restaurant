class EvaluationsController < ApplicationController

  def new
    @evaluation = Evaluation.new(:)

    @evaluation.save
    redirect_to match_list_evaluation_path(@evaluation)

  end

  def show
    @decision = session[:decision]
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.match_list = match_list_id
    @evaluation.restaurant_id = params[:restaurant_id].to_i
      if @decision == true
          @reservation = Reservation.new()

        redirect_to match_list_evaluation_path(match_list_id)
      else
        redirect_to match_list_evaluation_path(match_list_id), alert: "could not make a Dinner date"
      end

  end

  private
  def evaluation_params
    params.require(:evaluation).permit(:decision)
  end

end

