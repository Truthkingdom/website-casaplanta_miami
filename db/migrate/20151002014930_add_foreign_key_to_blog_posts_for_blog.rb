class AddForeignKeyToBlogPostsForBlog < ActiveRecord::Migration
  def change
    blog = Blog.create()
    add_column :blog_posts, :blog_id, :integer, default: blog.id
    add_foreign_key :blog_posts, :blogs
  end
end
