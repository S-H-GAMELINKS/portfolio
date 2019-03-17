require 'shrine'
require 'shrine/storage/s3'
require 'shrine/storage/file_system'

if Rails.env.production?
  s3_options = {
      access_key_id:     'S3_ACCESS_KEY_ID',
      secret_access_key: 'S3_SECRET_ACCESS_KEY',
      region:            'S3_REGION',
      bucket:            'S3_BUCKET',
  }
 
  Shrine.storages = {
      cache: Shrine::Storage::S3.new(prefix: 'cache', **s3_options),
      store: Shrine::Storage::S3.new(**s3_options),
  }
else
  Shrine.storages = {
      cache: Shrine::Storage::FileSystem.new('public', prefix: 'images/uploads/cache'),
      store: Shrine::Storage::FileSystem.new('public', prefix: 'images/uploads/store'),
  }
end

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data