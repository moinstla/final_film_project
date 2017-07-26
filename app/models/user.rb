class User < ApplicationRecord
  after_create :send_welcome_message

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
  validates :password, uniqueness: true

end
