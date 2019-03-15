require 'shrine'
require 'shrine/storage/file_system'
# require 'shrine/storage/s3'

# アップロードするディレクトリの指定
# if Rails.env.production?
#   s3_options = {
#       access_key_id:     'your_access_key_id',
#       secret_access_key: 'your_secret_access_key',
#       region:            'ap-northeast-1',
#       bucket:            'abc.example.com',
#   }
 
#   Shrine.storages = {
#       cache: Shrine::Storage::S3.new(prefix: 'cache', **s3_options),
#       store: Shrine::Storage::S3.new(prefix: 'store', **s3_options),
#   }
# else
  Shrine.storages = {
      cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'),
      store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/store'),
  }
# end

# 使用するプラグインの宣言
Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for_forms