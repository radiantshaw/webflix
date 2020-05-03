class StreamFileUploader < CarrierWave::Uploader::Base
  include CarrierWave::Video

  process encode_video: [:mp4]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end