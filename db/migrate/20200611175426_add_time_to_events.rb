class AddTimeToEvents < ActiveRecord::Migration[6.0]
  def change
  	add_column :events, :time, :time
  end
end
