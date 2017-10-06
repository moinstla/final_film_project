class Shoot < ApplicationRecord

  has_attached_file :pdf, :styles => { :thumb => ["100x100#", :png] }
  validates_attachment :pdf, content_type: { content_type: "application/pdf" }
end
