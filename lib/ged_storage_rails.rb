require "ged_storage_rails/engine"
require "ged_storage_rails/configuration"
require "google_drive"

Dir[File.expand_path('../ged_storage_rails/drive/*.rb', __FILE__)].map do |path|
  require path
end

module GedStorageRails
  class <<self
    include GedStorageRails::Configuration

    attr_accessor :config_drive_storage_path
  end
end
