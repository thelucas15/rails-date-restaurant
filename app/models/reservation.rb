class Reservation < ApplicationRecord
  belongs_to :evaluation
  belongs_to :restaurant
  belongs_to :user
  belongs_to :match_list
end
