require 'ostruct'
require 'yaml'

CONFIG = "#{Rails.root}/config/xpay.yml"

all_config = YAML.load_file(CONFIG) || {}
env_config = all_config[Rails.env] || {}
XpayConfig = OpenStruct.new(env_config)