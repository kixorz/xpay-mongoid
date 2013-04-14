$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "xpay/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "xpay"
  s.version     = Xpay::VERSION
  s.authors     = ["Adam Konrad"]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Xpay."
  s.description = "TODO: Description of Xpay."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  # s.add_dependency "jquery-rails"
end
