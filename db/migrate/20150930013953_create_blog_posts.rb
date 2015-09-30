class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :name
      t.date :post_date
      t.text :content

      t.timestamps null: false
    end
  end
end
