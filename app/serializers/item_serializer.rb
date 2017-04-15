class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :image
  has_one :category
  has_one :user
end
