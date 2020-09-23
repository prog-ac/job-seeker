CarrierWave.configure do |config|
  # S3の設定
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Rails.application.credentials.aws[:access_key_id],
      :aws_secret_access_key  => Rails.application.credentials.aws[:secret_access_key],
      :region                 => Rails.application.credentials.aws[:region],
      # :host                   => '必要なら設定する'
      # :endpoint               => '必要なら設定する'
  }

  # S3のバケットを指定。
  config.fog_directory     = Rails.application.credentials.aws[:bucket]
  # 一般公開させて無いS3の場合は以下の設定を行う。
  config.fog_public     = false
  # 一般公開されていない場合は以下の設定をする事で60秒間有効なURLを発行してくれる。
  config.fog_authenticated_url_expiration = 60
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

  # public配下にキャッシュができると参照されてしまうので、予め変えておく。
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end