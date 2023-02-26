class Vehicle < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :drivers, dependent: :destroy
  has_many :rides, dependent: :destroy
  belongs_to :category
end
