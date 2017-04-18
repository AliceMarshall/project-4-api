class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :email, :telephone, :profile_image, :items, :friends, :friendships
end
