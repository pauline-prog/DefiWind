class CreateUsersGroupRankingsJoinTable < ActiveRecord::Migration[6.0]
  def change
  	create_join_table :users, :group_rankings
  end
end
