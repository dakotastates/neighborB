class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message, :user, :recipient, :created_at
end
