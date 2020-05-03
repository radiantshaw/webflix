CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_public = true
  config.fog_directory = '/public'

  if Rails.env.development? || Rails.env.test?
    config.fog_credentials = {
      provider: 'Local',
      local_root: "#{Rails.root}"
    }
  end
end