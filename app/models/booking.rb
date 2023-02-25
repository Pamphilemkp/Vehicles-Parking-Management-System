class Booking < ApplicationRecord
  belongs_to :passenger
  belongs_to :vehicle
end
