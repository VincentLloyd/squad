CarrierWave.configure do |config|
  # fail noisly
  config.ignore_integrity_errors = false
  config.ignore_processing_errors = false
  config.ignore_download_errors = false

  # For testing, upload files to local `tmp` folder and disable processing
  if Rails.env.test? or Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
  end

  # Enable the use of fog for cloud uploads
  config.fog_provider = 'fog' # 'fog/aws' etc. Defaults to 'fog'
  config.fog_credentials = {} # Provider specific credentials

end
