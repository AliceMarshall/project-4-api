class User < ApplicationRecord
  has_secure_password
  has_friendship
  mount_uploader :image, ImageUploader
  has_many :items
  has_many :requests_sent, class_name: "Request", foreign_key: "borrower_id"
  has_many :requests_received, class_name: "Request", foreign_key: ":owner_id"
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true

  def mutual_friends
    # @user = current_user
    # user_friends = @user.friends
    mutual = []

    friends.each do |friend|
      friends_friends = friend.friends
      friends_friends.each do |mate|
        mutual.push mate
      end
      mutual.uniq!
      user = mutual.find { |x| x[:id] == id }
      mutual.delete user
    end
    p "*******"
    p mutual
    return mutual

  end
end
