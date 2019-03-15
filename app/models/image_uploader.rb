require 'image_processing/mini_magick'

class ImageUploader < Shrine
  incluede ImageProcessing::MiniMagick
  plugin :processing
  plugin :versions
  plugin :delete_raw

  process(:store) do |io, context|
    original = io.download

    size_400 = resize_to_limit!(original, 400, 400) { |cmd| cmd.auto_orient }
    size_100 = resize_to_limit(size_400, 100, 100)

    { original: io, large: size_400, thumb: size_100 }
  end
end
