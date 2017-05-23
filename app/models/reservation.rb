class Reservation < ApplicationRecord
  has_one :evaluation
  belongs_to :restaurant
end
