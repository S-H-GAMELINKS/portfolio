class Event < ApplicationRecord
  include ImageUploader::Attachment.new(:carousel)
end
