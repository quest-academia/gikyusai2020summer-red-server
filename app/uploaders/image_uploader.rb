class ImageUploader < CarrierWave::Uploader::Base
  if Rails.env.development?
    storage :file
  elsif Rails.env.test?
    storage :file
  else
    storage :fog
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(png jpg jpeg gif)
  end

  def filename
    "#{Time.zone.now.strftime('%Y%m%d%H%M%S')}#{original_filename}" if original_filename
  end
end
