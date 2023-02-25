class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers, id: false, primary_key: :passenger_id do |t|
      t.primary_key :passenger_id
      t.string :name
      t.string :email
      t.integer :phone
      t.text :address

      t.timestamps
    end
  end
end
