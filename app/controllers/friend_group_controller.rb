class FriendGroupController < ApplicationController
  def index
    if params[:event] && params[:first_query] && params[:second_query]
      @array = []
      user1 = User.search_by_names_and_race_number(params[:first_query]).first
      user2 = User.search_by_names_and_race_number(params[:second_query]).first
      event = Event.search_by_title(params[:event]).first
      @friend_group = FriendGroup.new(
        created_by_id: current_user.id,
        event_id: event.id
        )
      @friend_group.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user1.id
        )
      @friend_groups_users.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user2.id
        )
      @friend_groups_users.save!
      @friend_groups = FriendGroup.where(created_by_id: current_user)
    else
      @friend_groups = FriendGroup.where(created_by_id: current_user)
     end
  end
end
