# Load config from YAML file
yaml_config = YAML.load_file(Rails.root.join("config", "errbit.yml"))

Airbrake.configure do |config|
  config.api_key = yaml_config['api_key']
  config.host    = yaml_config['host']
  config.port    = yaml_config['port'] || 80
  config.secure  = config.port == 443
end
