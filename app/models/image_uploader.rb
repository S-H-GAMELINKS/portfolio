require 'image_processing/mini_magick'

class ImageUploader < Shrine
  include ImageProcessing::MiniMagick
  plugin :processing
  plugin :versions
  plugin :delete_raw
  plugin :validation_helpers

  process(:store) do |io, context|
    original = io.download
    pipeline = ImageProcessing::MiniMagick.source(original)
    
    size_400 = pipeline.resize_to_limit!(400, 400)
    size_100 = pipeline.resize_to_limit!(100, 100)

    { original: io, large: size_400, thumb: size_100 }
  end

  Attacher.validate do
    validate_max_size 5 * 1024 * 1024, message: 'is too large (max is 5MB)'
    validate_mime_type_inclusion %w(image/jpeg image/png)
  end

end
