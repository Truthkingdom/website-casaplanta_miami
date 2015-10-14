class MediaLibrary::Image < ActiveRecord::Base
  belongs_to :media_library

  before_create :check_name

  has_attached_file :picture,
  :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :url => "/system/:attachment/:id/:basename_:style.:extension",



  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :thumb    => ['250x250#',  :jpg, :quality => 70],
    :preview  => ['500x500#',  :jpg, :quality => 70],
    :retina   => ['1920>',     :jpg, :quality => 100]
  },

  :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :thumb    => '-set colorspace sRGB -strip',
    :preview  => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }

  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  private

  def check_name
    if self.name.blank?
      self.name = self.picture_file_name.parameterize
    end
  end


end
