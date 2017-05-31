class HomeController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
   def index
    session[:conversations] ||= []

    @users = User.online_now.where.not(id: current_user)

    @conversations = Conversation.includes(:recipient, :messages, )
                                 .find(session[:conversations])
  end
end
