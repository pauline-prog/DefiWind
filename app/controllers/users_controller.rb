class UsersController < ApplicationController
  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
      @user.update(user_params)
  	  redirect_to profile_path
  	else
      raise
  	  render 'users/edit'
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :username, :email, :race_number, :location, :avatar, :photo)
  end
end
