class Blog::Post < ActiveRecord::Base
  belongs_to :blog
  # has_and_belongs_to_many :images, class_name: "Media::Image"
end
