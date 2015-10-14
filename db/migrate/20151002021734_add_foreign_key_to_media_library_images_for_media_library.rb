class AddForeignKeyToMediaLibraryImagesForMediaLibrary < ActiveRecord::Migration
  def change
    media = MediaLibrary.create()
    add_column :media_library_images, :media_library_id, :integer, default: media.id
    add_foreign_key :media_library_images, :media_libraries
  end
end
