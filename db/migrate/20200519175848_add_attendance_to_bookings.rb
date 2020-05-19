class AddAttendanceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :attendance, :string
  end
end
