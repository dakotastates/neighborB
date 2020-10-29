class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :firstName, :lastName, :avatar, :bio, :longitude, :latitude

end
