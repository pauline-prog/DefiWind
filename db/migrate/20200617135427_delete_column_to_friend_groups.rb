class DeleteColumnToFriendGroups < ActiveRecord::Migration[6.0]
  def change
  	remove_column :friend_groups, :user_id
  end
end
