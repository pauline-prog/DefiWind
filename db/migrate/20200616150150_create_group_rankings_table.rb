class CreateGroupRankingsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :group_rankings do |t|
      t.references :users, null: false
      t.references :position, null: false
      t.timestamps
    end
  end
end
