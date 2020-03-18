class AddDataToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :disp_flg, :boolean
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
    add_column :events, :allDay, :string
    add_column :events, :created_at, :datetime
    add_column :events, :updated_at, :datetime
  end
end
