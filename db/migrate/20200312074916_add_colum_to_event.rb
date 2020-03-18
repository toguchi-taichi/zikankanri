class AddColumToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :disp_flg, :boolean
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
    add_column :events, :allday, :string
  end
end
