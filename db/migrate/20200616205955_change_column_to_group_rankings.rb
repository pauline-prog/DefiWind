class ChangeColumnToGroupRankings < ActiveRecord::Migration[6.0]
  def change
  	remove_column :group_rankings, :users_id
  	add_reference :group_rankings, :user_id, foreign_key: {to_table: :users}
  end
end
