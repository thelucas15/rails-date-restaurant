class Reservation < ApplicationRecord
  has_one :evaluation
  belongs_to :restaurant

  # after_create :send_confirmation_email

  # private

  # def send_confirmation_email
  #   ReservationMailer.confirmation(self).deliver_now
  # end
end
