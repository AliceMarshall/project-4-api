class User < ApplicationRecord
  has_secure_password
  has_friendship
  has_many :items
  has_many :requests
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
end
