require 'ostruct'
require 'yaml'

all_config = YAML.load_file("#{Rails.root}/config/xpay.yml") || {}
env_config = all_config[Rails.env] || {}
XpayConfig = OpenStruct.new(env_config)