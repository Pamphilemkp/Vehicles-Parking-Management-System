class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :passenger
  belongs_to :vehicle
  belongs_to :paking_slot
end
