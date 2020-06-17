class ChangeTableName < ActiveRecord::Migration[6.0]
  def change
  	rename_table :table_friend_group_users, :friend_groups_users
  end
end
