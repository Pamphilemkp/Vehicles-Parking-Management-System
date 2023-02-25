class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :passenger
  belongs_to :vehicle
end
