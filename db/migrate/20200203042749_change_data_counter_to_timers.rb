class ChangeDataCounterToTimers < ActiveRecord::Migration[5.2]
  def change
    change_column :timers, :counter, :integer
  end
end
