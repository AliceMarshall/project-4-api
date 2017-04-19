class ItemSerializer < ActiveModel::Serializer
  has_one :category
  has_one :user
  has_many :comments
  attributes :id, :name, :instructions, :image
end
