class BoardMessageSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :user

  has_one :user
end
