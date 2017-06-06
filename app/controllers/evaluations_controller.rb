class EvaluationsController < ApplicationController

  def index
   @evaluations = policy_scope(Evaluation).where(selectee_id: current_user.id)
  end

  def accept

    @evaluation = Evaluation.find(params[:id])
    authorize @evaluation
    @evaluation.accepted = true
    if @evaluation.save
      redirect_to  new_evaluation_reservation_path(@evaluation)

    end
  end

  def decline
    @evaluation = Evaluation.find(params[:id])
    authorize @evaluation
    @evaluation.accepted = false
    if @evaluation.save
      redirect_to match_list_evaluations_path(@evaluation.match_list_id)
    end
  end

  def create

    @match_list = MatchList.find(params[:match_list_id])
    @restaurant = @match_list.restaurant
    @evaluation = Evaluation.new(selector: current_user, selectee_id: params[:selectee_id], match_list: @match_list, restaurant: @restaurant)
    authorize @evaluation
    @evaluation.save

    redirect_to match_list_evaluations_path(@match_list)
  end





  private

  def eval_params
    params.require(:evaluation).permit(:selector_id,:selectee_id)
  end


end

