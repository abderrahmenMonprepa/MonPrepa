class Administrator < ApplicationRecord
  # Administrator is a User
  belongs_to :user

  # Administrator can add messages
  has_many :messages, dependent: :destroy
  
end
