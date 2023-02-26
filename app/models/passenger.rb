class Passenger < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :rides, dependent: :destroy
end
