class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :email, :telephone, :image_src, :items, :friends, :friendships

  def image_src
    object.image.url
  end
end
