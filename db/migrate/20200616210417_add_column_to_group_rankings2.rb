class AddColumnToGroupRankings2 < ActiveRecord::Migration[6.0]
  def change
  	remove_column :group_rankings, :user_id_id
  	add_reference :group_rankings, :user, foreign_key: {to_table: :users}
  end
end
