class AddNameToMediaLibraryImage < ActiveRecord::Migration
  def change
    add_column :media_library_images, :name, :string
  end
end
