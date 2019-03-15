require 'shrine'
require 'shrine/storage/file_system'


if Rails.env.production?
  s3_options = {
      access_key_id:     'your_access_key_id',
      secret_access_key: 'your_secret_access_key',
      region:            'ap-northeast-1',
      bucket:            'abc.example.com',
  }
 
  Shrine.storages = {
      cache: Shrine::Storage::S3.new(prefix: 'cache', **s3_options),
      store: Shrine::Storage::S3.new(prefix: 'store', **s3_options),
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