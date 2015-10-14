class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :type
      t.date :post_date
      t.text :content

      t.timestamps null: false
    end
  end
end
