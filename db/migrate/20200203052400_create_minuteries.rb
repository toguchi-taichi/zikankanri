class CreateMinuteries < ActiveRecord::Migration[5.2]
  def change
    create_table :minuteries do |t|
      t.integer :counter
      t.string :day

      t.timestamps
    end
  end
end
