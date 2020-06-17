class AddColumnToGroupRankings3 < ActiveRecord::Migration[6.0]
  def change
  	remove_column :group_rankings, :position_id
  	add_reference :group_rankings, :position, foreign_key: {to_table: :positions}
  end
end
