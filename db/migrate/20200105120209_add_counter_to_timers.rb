class AddCounterToTimers < ActiveRecord::Migration[5.2]
  def change
    add_column :timers, :counter, :string
  end
end
