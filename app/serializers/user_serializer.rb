class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :avatar, :bio, :longitude, :latitude

end
