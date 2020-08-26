unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'

    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAQUVX7DJPHPKR2UXX',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'gikyusai2020summer-red-server'
    # config.cache_storage = :fog
  end
end
