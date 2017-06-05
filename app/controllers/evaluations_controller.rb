class EvaluationsController < ApplicationController

  def new

    @evaluation = Evaluation.new()
  end

  def show
    #evaluations has 2 match_list ids -references  and 1 restaurant as ref
    # need to show both users that are selectors and selectees
    @evaluation.user = current_user
    @evaluation.restaurant_id = params[:restaurant_id].to_i
    @evaluation.match_list_id = params[:match_list_id].to_i
    # need match_id to associate evaluation with corresponding restaurant
    @evaluation

    redirect_to match_list_evaluation_path(params[:match_list_id], @evaluation)
  end

  def index
    @evaluations = Evaluation.all
    @evaluations = policy_scope(@evaluations)
  end



end

