class FriendGroupController < ApplicationController
  def index
    if params[:event] && params[:first_query].empty? == false && params[:second_query].empty? == false && params[:third_query].empty? && params[:fourth_query].empty? && params[:fifth_query].empty? && params[:sixth_query].empty? && params[:seventh_query].empty?
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
      return @friend_groups
    elsif params[:event] && params[:first_query].empty? == false && params[:second_query].empty? == false && params[:third_query].empty? == false && params[:fourth_query].empty? && params[:fifth_query].empty? && params[:sixth_query].empty? && params[:seventh_query].empty?
      user1 = User.search_by_names_and_race_number(params[:first_query]).first
      user2 = User.search_by_names_and_race_number(params[:second_query]).first
      user3 = User.search_by_names_and_race_number(params[:third_query]).first
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
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user3.id
        )
      @friend_groups_users.save!
      @friend_groups = FriendGroup.where(created_by_id: current_user)
      return @friend_groups
    elsif params[:event] && params[:first_query].empty? == false && params[:second_query].empty? == false && params[:third_query].empty? == false && params[:fourth_query].empty? == false && params[:fifth_query].empty? && params[:sixth_query].empty? && params[:seventh_query].empty?
      user1 = User.search_by_names_and_race_number(params[:first_query]).first
      user2 = User.search_by_names_and_race_number(params[:second_query]).first
      user3 = User.search_by_names_and_race_number(params[:third_query]).first
      user4 = User.search_by_names_and_race_number(params[:fourth_query]).first
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
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user3.id
        )
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user4.id
        )
      @friend_groups_users.save!
      @friend_groups = FriendGroup.where(created_by_id: current_user)
      return @friend_groups
    elsif params[:event] && params[:first_query].empty? == false && params[:second_query].empty? == false && params[:third_query].empty? == false && params[:fourth_query].empty? == false && params[:fifth_query].empty? == false && params[:sixth_query].empty? && params[:seventh_query].empty?
      user1 = User.search_by_names_and_race_number(params[:first_query]).first
      user2 = User.search_by_names_and_race_number(params[:second_query]).first
      user3 = User.search_by_names_and_race_number(params[:third_query]).first
      user4 = User.search_by_names_and_race_number(params[:fourth_query]).first
      user5 = User.search_by_names_and_race_number(params[:fifth_query]).first
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
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user3.id
        )
      @friend_groups_users.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user4.id
        )
      @friend_groups_users.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user5.id
        )
      @friend_groups_users.save!      
      @friend_groups = FriendGroup.where(created_by_id: current_user)
      return @friend_groups
    elsif params[:event] && params[:first_query].empty? == false && params[:second_query].empty? == false && params[:third_query].empty? == false && params[:fourth_query].empty? == false && params[:fifth_query].empty? == false && params[:sixth_query].empty? == false && params[:seventh_query].empty?
      user1 = User.search_by_names_and_race_number(params[:first_query]).first
      user2 = User.search_by_names_and_race_number(params[:second_query]).first
      user3 = User.search_by_names_and_race_number(params[:third_query]).first
      user4 = User.search_by_names_and_race_number(params[:fourth_query]).first
      user5 = User.search_by_names_and_race_number(params[:fifth_query]).first
      user6 = User.search_by_names_and_race_number(params[:sixth_query]).first      
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
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user3.id
        )
      @friend_groups_users.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user4.id
        )
      @friend_groups_users.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user5.id
        )
      @friend_groups_users.save!      
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user6.id
        )
      @friend_groups_users.save!      
      @friend_groups = FriendGroup.where(created_by_id: current_user)
      return @friend_groups
    elsif params[:event] && params[:first_query].empty? == false && params[:second_query].empty? == false && params[:third_query].empty? == false && params[:fourth_query].empty? == false && params[:fifth_query].empty? == false && params[:sixth_query].empty? == false && params[:seventh_query].empty? == false
      user1 = User.search_by_names_and_race_number(params[:first_query]).first
      user2 = User.search_by_names_and_race_number(params[:second_query]).first
      user3 = User.search_by_names_and_race_number(params[:third_query]).first
      user4 = User.search_by_names_and_race_number(params[:fourth_query]).first
      user5 = User.search_by_names_and_race_number(params[:fifth_query]).first
      user6 = User.search_by_names_and_race_number(params[:sixth_query]).first      
      user7 = User.search_by_names_and_race_number(params[:seventh_query]).first      
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
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user3.id
        )
      @friend_groups_users.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user4.id
        )
      @friend_groups_users.save!
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user5.id
        )
      @friend_groups_users.save!      
      @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user6.id
        )
      @friend_groups_users.save!   
     @friend_groups_users = FriendGroupsUsers.new(
        friend_group_id: @friend_group.id,
        user_id: user7.id
        )
      @friend_groups_users.save!        
      @friend_groups = FriendGroup.where(created_by_id: current_user)
      return @friend_groups
    else
      @friend_groups = FriendGroup.where(created_by_id: current_user)
    end
  end
end
