class AddColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :date
    add_reference :bookings, :lesson, foreign_key: true
    add_reference :bookings, :student, foreign_key: { to_table: :users }
  end
end
