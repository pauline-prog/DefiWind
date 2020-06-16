class GroupRankingsController < ApplicationController
  def index
    if params[:query]
  	  @group_rankings = GroupRanking.where(user: params[:query])
    else
      @group_rankings = nil
     end
  end
end
