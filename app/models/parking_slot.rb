class ParkingSlot < ApplicationRecord
  has_many :rides, dependent: :destroy
end
