class MatchListsController < ApplicationController

  def create

    match_list = MatchList.new(match_list_params)
    match_list.user = current_user
    match_list.restaurant_id = params[:restaurant_id].to_i
    match_list.save

    redirect_to restaurant_path(params[:restaurant_id])
  end

  private
  def match_list_params
    params.require(:match_list).permit(:date,:start_time)
  end
end
