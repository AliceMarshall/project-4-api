class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :item
  attributes :id, :body, :user, :created_at
end
