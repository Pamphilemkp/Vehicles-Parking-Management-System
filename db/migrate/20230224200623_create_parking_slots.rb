class CreateParkingSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_slots do |t|
      t.integer :slot_number
      t.string :slot_loaction
      t.boolean :availability_status

      t.timestamps
    end
  end
end
