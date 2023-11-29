class AddColumnsToVenues < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :capacity, :integer
    add_column :venues, :wifi_speed, :integer
  end
end
