$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ged_storage_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ged_storage_rails"
  s.version     = GedStorageRails::VERSION
  s.authors     = ["Matheus Bizzoni"]
  s.email       = ["matheusbizzoni@hotmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of GedStorageRails."
  s.description = "TODO: Description of GedStorageRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "google_drive"

end
