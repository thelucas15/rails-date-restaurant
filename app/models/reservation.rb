class Reservation < ApplicationRecord

  has_one :evaluation # not sure ask nick
  belongs_to :restaurant
  belongs_to :user
  belongs_to :match_list

end
