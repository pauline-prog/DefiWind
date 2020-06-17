class ChangeGroupRankingsToFriendGroups < ActiveRecord::Migration[6.0]
  def change
  	rename_table :group_rankings, :friend_groups
  end
end
