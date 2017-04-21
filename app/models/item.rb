class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category
  belongs_to :user
  has_many :comments, :dependent => :destroy
  scope :of_friends, -> (friends) {where user_id: friends }
  scope :of_mutual_friends, -> (mutuals) {where user_id: mutuals }
end
