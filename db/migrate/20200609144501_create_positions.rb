class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.references :event
      t.references :user
      t.time :time
      t.integer :point
      t.integer :place
      t.timestamps
    end
  end
end
