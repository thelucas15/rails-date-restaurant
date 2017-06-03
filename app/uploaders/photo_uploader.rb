# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  version :thumb do
    process eager: true  # Force version generation at upload time.
    process convert: 'jpg'
    process resize_to_fill: [150,150]
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end
end
