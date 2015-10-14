class Blog < ActiveRecord::Base
  has_many :posts, class_name: "Blog::Post"
  has_many :media_libraries
end
