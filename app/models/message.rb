class Message < ApplicationRecord
  belongs_to :recipient, class_name: 'User', :foreign_key => :recipient_id
  belongs_to :user
end
