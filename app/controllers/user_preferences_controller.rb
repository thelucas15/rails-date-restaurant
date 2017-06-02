class UserPreferencesController < ApplicationController

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user

    @user.assign_attributes(user_params)
    if @user.save
      redirect_to root_path
      # redirect_to session[:return_to] ||= request.referer
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :age_pref_start, :age_pref_end, :gender_pref, :hash_tag_pref, :description, :username, :photo, :photo_cache)
  end

end


