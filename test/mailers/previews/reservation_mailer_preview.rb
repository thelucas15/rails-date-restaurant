class ReservationMailerPreview < ActionMailer::Preview
  def confirmation
    user = User.first
    ReservationMailer.confirmation(user, @reservation)
  end
end
