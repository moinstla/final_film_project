class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :name, :presence => true
  validates :title, :presence => true
  validates :content, :presence => true
end
