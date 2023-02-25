class Driver < ApplicationRecord
  belongs_to :vehicle
  has_many :rides, dependent: :destroy
end
