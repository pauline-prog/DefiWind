class AddColumnToEvents < ActiveRecord::Migration[6.0]
  def change
  	add_column :events, :course, :boolean
  end
end
