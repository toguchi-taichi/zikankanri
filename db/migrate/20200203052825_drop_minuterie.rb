class DropMinuterie < ActiveRecord::Migration[5.2]
  def change
    drop_table :minuteries
  end
end
