class ItemSerializer < ActiveModel::Serializer
  has_one :category
  belongs_to :user
  has_many :comments
  attributes :id, :name, :instructions, :image_src, :available, :friend_level

  def image_src
    object.image.url
  end
end
