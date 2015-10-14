class MediaLibrary < ActiveRecord::Base
  has_many :images, class_name: "MediaLibrary::Image"
  has_many :blogs
end
