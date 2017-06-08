class Reservation < ApplicationRecord

  belongs_to :evaluation # not sure ask nick
  belongs_to :restaurant

end
