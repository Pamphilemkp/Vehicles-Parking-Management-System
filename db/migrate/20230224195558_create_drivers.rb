class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers, id: false, primary_key: :driver_id do |t|
      t.primary_key :driver_id
      t.references :vehicle, references: :vehicles, null: false 
      t.string :name
      t.string :email
      t.integer :phone
      t.text :address

      t.timestamps
    end
  end
end
