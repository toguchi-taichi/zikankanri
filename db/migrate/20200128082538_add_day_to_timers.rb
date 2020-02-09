class AddDayToTimers < ActiveRecord::Migration[5.2]
  def change
    add_column :timers, :day, :string
  end
end
