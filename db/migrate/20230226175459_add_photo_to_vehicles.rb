class AddPhotoToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :photo, :string
  end
end
