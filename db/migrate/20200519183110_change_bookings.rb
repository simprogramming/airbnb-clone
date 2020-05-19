class ChangeBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column(:bookings, :date)
    remove_column(:bookings, :time)
    remove_column(:bookings, :attendance)

    change_column(:bookings, :description, :text)

    add_column(:bookings, :attendance, :integer)

  end
end
