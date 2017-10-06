class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :name, :presence => true
  validates :title, :presence => true
  validates :content, :presence => true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
