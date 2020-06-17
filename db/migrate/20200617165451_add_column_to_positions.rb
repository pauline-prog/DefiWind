class AddColumnToPositions < ActiveRecord::Migration[6.0]
  def change
  	add_column :positions, :general, :boolean
  end
end
