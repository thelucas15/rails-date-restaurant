class PagesController < ApplicationController
  # TO NOT HAVE AUTHENTICATION IN HOME PAGE
  skip_before_action :authenticate_user!
  def home
    @image = [
      "background1.png",
      "background2.png",
      "background3.png",
      "background4.png",
      "background5.png",
      "background6.png",
    ].sample
  end
end
