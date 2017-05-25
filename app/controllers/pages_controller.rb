class PagesController < ApplicationController
  def home
    @image = [
      "rachael-gorjestani-154908.jpg",
      "brooke-lark-203842.jpg",
      "brooke-lark-209712.jpg",
      "dan-gold-105699.jpg",
      "eaters-collective-219711.jpg",
      "matthew-henry-86779.jpg",
      "matthew-henry-86779.jpg",
      "seemi-samuel-15564.jpg",
      "serge-esteve-5821.jpg",
      "tegan-mierle-157974.jpg",
    ].sample
  end


end
