$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hyalin/version"

# Inspired from https://github.com/jdutil/contact_us

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hyalin"
  s.version     = Hyalin::VERSION
  s.authors     = ["Heitor Salazar"]
  s.email       = ["heitorsalazar@gmail.com"]
#   s.homepage    = ""
  s.summary     = "Simple contact form engine"
  s.description = "Integrated and overridable hyalin form generation"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["WTFPLICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency 'combustion'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'sqlite3'
end
