class AddAttachmentPictureToMediaImages < ActiveRecord::Migration
  def self.up
    change_table :media_images do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :media_images, :picture
  end
end
