class PagesController < ApplicationController
  def home
    @image = [
      cl_image_tag("background1_m1asje.png"),
      cl_image_tag("background2_inbwhr.png"),
      cl_image_tag("background3_euleqw.png"),
      cl_image_tag("background4_jlcs1r.png"),
      cl_image_tag("background5_m27ok8.png"),
      cl_image_tag("background6_kruelj.png"),
    ].sample
  end
end
