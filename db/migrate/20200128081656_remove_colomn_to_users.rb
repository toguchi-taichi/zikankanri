class RemoveColomnToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :day, :integer
  end
end
