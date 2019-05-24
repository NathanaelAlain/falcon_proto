class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def size_range
    1..10.megabytes
  end
end
