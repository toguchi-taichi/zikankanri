class DropTableToEvent < ActiveRecord::Migration[5.2]
  def change
    drop_table :events
  end
end
