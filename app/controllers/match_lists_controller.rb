class MatchListsController < ApplicationController

  def create
    match_list = MatchList.new(match_list_params)
    match_list.user = current_user
    match_list.restaurant_id = params[:restaurant_id].to_i
       if match_list.save

        redirect_to restaurant_path(params[:restaurant_id])
       else
        redirect_to restaurant_path(params[:restaurant_id]), alert: 'Could not add to restaurant ' + match_list.errors.messages.to_s
        puts "Something went wrong with your request"
        end
  end

  def destroy

    @match_list_user =MatchList.find(params[:id])
    @match_list_user.destroy

    redirect_to restaurant_path(params[:restaurant_id])
  end


# what i used to destroy all matchlist
# MatchList.destroy_all

  private
  def match_list_params
    params.require(:match_list).permit(:date,:start_time)
  end
end
