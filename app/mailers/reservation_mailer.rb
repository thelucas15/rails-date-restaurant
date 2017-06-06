class ReservationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.confirmation.subject
  #
  def confirmation(user, reservation)
    @user = user
    @reservation = reservation
    mail(to: @user.email, subject: 'Confirmation of your reservation!')
  end
end
