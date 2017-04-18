module GedStorageRails
  class DriveStorage < DriveStorageBase
    delegate :file_by_id, to: :session, allow_nil: true

    def self.upload!(file, collection_id = nil)
      new(file, collection_id).upload!
    end

    def initialize(file, collection_id)
      @file = file
      @collection_id = collection_id
    end

    def upload!
      collection && collection.upload_from_file(file, basename, convert: false)
    end

    private

    attr_reader :file, :collection_id

    def basename
      File.basename(file)
    end

    def collection
      file_by_id(collection_id)
    end
  end
end
