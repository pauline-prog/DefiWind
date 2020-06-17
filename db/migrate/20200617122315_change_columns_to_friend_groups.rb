class ChangeColumnsToFriendGroups < ActiveRecord::Migration[6.0]
  def change
  	remove_column :friend_groups, :position_id
  	add_reference :friend_groups, :event, foreign_key: {to_table: :events}
  end
end
