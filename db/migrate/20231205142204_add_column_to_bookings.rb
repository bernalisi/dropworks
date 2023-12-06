class AddColumnToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :start_time, :integer
    add_column :bookings, :session_length, :integer
  end
end
