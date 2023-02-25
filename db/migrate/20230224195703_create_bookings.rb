class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings, id: false, primary_key: :booking_id do |t|
      t.primary_key :booking_id
      t.references :passenger, references: :passengers, null: false
      t.references :vehicle, references: :vehicles, null: false 
      t.datetime :booking_date
      t.text :pickup_location
      t.text :drop_location

      t.timestamps
    end
  end
end
