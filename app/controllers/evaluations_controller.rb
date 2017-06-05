class EvaluationsController < ApplicationController
    skip_after_action :verify_policy_scoped, only: [:create, :new]

  def new

    @evaluation = Evaluation.new()
  end

  def create

    @match_list = MatchList.find(params[:match_list_id])
    @restaurant = @match_list.restaurant
    @evaluation = Evaluation.new(selector: current_user, selectee_id: params[:selectee_id], match_list: @match_list, restaurant: @restaurant)
    authorize @evaluation
    @evaluation.save

    # @evaluation = Evaluation.find(params[:id])
    # @evaluation.update_attributes()
    # @selector = @evaluation.selector
    # @selectee = @evaluation.selectee
    # @selector = false
    # @selectee = false
    # @evaluation.update_attributes(evaluations_path: true)
    # @evaluation = Evaluation.new(eval_params)
    # @evaluation.user = current_user

    #   if @selector == true && @selectee == true
    #     @evaluation.save
    #     @reservation = Reservation.new()
    #     redirect_to evaluation_reservation_path
    #   else
    #    redirect_to restaurant_path(:params[:restaurant_id])
    #   end
    redirect_to home_index_path
  end

  def index
    @evaluations = Evaluation.all
    @evaluations = policy_scope(@evaluations)
  end





  private

  def eval_params
    params.require(:evaluation).permit(:selector,:selectee)
  end

end

