class AddColumnToGroupRankings < ActiveRecord::Migration[6.0]
  def change
  	add_reference :group_rankings, :created_by, foreign_key: {to_table: :users}
  end
end
