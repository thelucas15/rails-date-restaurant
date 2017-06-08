class Reservation < ApplicationRecord

  has_one :evaluation # not sure ask nick
  belongs_to :restaurant

end
