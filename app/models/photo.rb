class Photo < ApplicationRecord
  include ImageUploader[:image]
  belongs_to :recruitment, optional: true
end
