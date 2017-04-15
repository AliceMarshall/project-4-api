class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :item
  has_one :user
end
