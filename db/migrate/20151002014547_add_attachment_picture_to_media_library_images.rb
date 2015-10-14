class AddAttachmentPictureToMediaLibraryImages < ActiveRecord::Migration
  def self.up
    change_table :media_library_images do |t|
      t.attachment :picture, null: false
    end
  end

  def self.down
    remove_attachment :media_library_images, :picture
  end
end
