require 'image_processing/mini_magick'

class ImageUploader < Shrine
  incluede ImageProcessing::MiniMagick
  plugin :processing

  process(:store) do |io, context|
    resize_to_limit!(io.download, 400, 400) { |cmd| cmd.auto_orient }
  end
end
