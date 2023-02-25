class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides, id: false, primary_key: :ride_id do |t|
      t.primary_key :ride_id
      t.references :driver, references: :drivers, null: false
      t.references :passenger, references: :passengers, null: false
      t.references :vehicle, references: :vehicles, null: false 
      t.datetime :ride_date
      t.text :pickup_location
      t.text :drop_location
      t.decimal :fare

      t.timestamps
    end
  end
end
