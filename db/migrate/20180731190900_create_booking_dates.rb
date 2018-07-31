class CreateBookingDates < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_dates do |t|
      t.integer :booking_id
      t.date :date

      t.timestamps
    end
  end
end
