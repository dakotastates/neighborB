class Message < ApplicationRecord
  belongs_to :user
  belongs_to :recipient
  belongs_to :conversation
end
