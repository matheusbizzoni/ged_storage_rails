module GedStorageRails
  class DriveStorageBase

    def session
      @session ||= GoogleDrive::Session.from_config(config_drive_storage_path)
    end

    protected

    def config_drive_storage_path
      GedStorageRails.config_drive_storage_path
    end
  end
end
