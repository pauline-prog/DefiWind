class PositionsController < ApplicationController
  def index
  	@positions = Position.all	
  	if params[:user_query].present?
  	  # sql_query = "first_name ILIKE :user_query or last_name ILIKE :user_query or race_number ILIKE :user_query"
  	  # @user = User.where(sql_query, user_query: "%#{params[:user_query]}%"
  	  # @user_position = Position.joins(:user).find_by(@user.id)
  	  # @user_position = @positions.where("user_last_name like ? or user_first_name like ? or race_number = ?", params[:user].last_name, params[:user].first_name, params[:user].last_name)
      sql_query = " \
        first_name ILIKE :user_query \
        OR last_name ILIKE :user_query \
        OR race_number ILIKE :user_query"
  	  # @user_position = Position.joins(:user).where(sql_query, user_query: "%#{params[:user_query]}%")
  	  @user_position = Position.global_search("%#{params[:user_query]}%").first
      redirect_to positions_path(@positions, anchor: "position-#{@user_position.id}")
  	end
  end
end
