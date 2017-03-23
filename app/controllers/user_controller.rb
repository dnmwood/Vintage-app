class UserController < ApplicationController

  def new
    @user = current_user
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)
    redirect_to new_user_game_path(@user)
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :city, :province, :country)
  end
end
