class CreateMediaImages < ActiveRecord::Migration
  def change
    create_table :media_images do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
