IEX::Api.configure do |config|
  config.publishable_token = 'Tpk_127ac9f695834625a2a0d7acf63652c0' # defaults to ENV['IEX_API_PUBLISHABLE_TOKEN']
  config.secret_token = 'Tsk_78897d0a13124ac3bc64de017a2c9399' # defaults to ENV['IEX_API_SECRET_TOKEN']
  config.endpoint = 'https://sandbox.iexapis.com/v1'
end