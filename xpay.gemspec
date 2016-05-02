$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "xpay"
  s.version     = "0.0.1"
  s.authors     = ["Adam Konrad"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = "Summary of Xpay."
  s.description = "Description of Xpay."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  # s.add_dependency "jquery-rails"
end
