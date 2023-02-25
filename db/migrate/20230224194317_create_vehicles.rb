class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles, id: false, primary_key: :vehicle_id do |t|
      t.primary_key :vehicle_id
      t.references :category, references: :categories, null: false 
      t.string :registration_number
      t.string :model
      t.string :owner_name
      t.text :owner_phone

      t.timestamps
    end
  end
end
