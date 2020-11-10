class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  # has_many :comments, dependent: :destroy
  has_many :board_messages, dependent: :destroy
  # has_many :messages, dependent: :destroy
end
