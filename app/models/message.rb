class Message < ApplicationRecord
  validates :title, presence: true
  
  scope :not_read, -> {where(is_read: false)}

  belongs_to :receiver, class_name: 'User'
  belongs_to :sender, class_name: 'User'
end
