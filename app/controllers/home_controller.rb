class HomeController < ApplicationController
  skip_after_action :verify_policy_scoped, only: [:index, :show]
  def index
    session[:conversations] ||= []


    # @users = User.online_now.where.not(id: current_user)
    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end

  def show

    #@user_sender = User.sender_id
   # @user_recip = User.recipient_id
   #session[:conversations] ||= []

    #@user = User.find_by(:user_id, @u
    # @users = User.online_now.where.not(id: current_user)
    #@users = User.all.where.not(id: current_user, )
    #@conversations = Conversation.includes(:recipient, :messages)
                                # .find(session[:conversations])
  end


end
