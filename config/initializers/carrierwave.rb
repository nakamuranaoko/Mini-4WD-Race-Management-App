CarrierWave.configure do |config|
  config.storage = :file # デフォルトはローカルファイルシステム
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
  