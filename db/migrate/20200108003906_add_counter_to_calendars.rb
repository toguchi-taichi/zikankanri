class AddCounterToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :counter, :string
  end
end
