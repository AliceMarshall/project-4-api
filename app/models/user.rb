class User < ApplicationRecord
  has_secure_password
  has_friendship
  mount_uploader :image, ImageUploader
  has_many :items
  has_many :requests_sent, class_name: "Request", foreign_key: "borrower_id"
  has_many :requests_received, class_name: "Request", foreign_key: ":owner_id"
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
end
