class Photo < ApplicationRecord
  # include ImageUploader::Attachment.new(@photo, :image, cache: :other_cache, store: :other_store)
  # include ImageUploader.attachment(:image)
  include ImageUploader[:image]
  belongs_to :recruitment, optional: true
end
