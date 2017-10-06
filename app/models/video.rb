class Video < ActiveRecord::Base
  belongs_to :gallery


  has_attached_file :clip, :styles => {
  :medium => { :geometry => "640x480", :format => 'flv' },
  :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
},  :processors => [:transcoder]

validates_attachment :clip, content_type: { content_type: "video/mp4" }


end
