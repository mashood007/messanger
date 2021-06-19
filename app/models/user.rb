class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true

  has_many :my_received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :my_send_messages, class_name: 'Message', foreign_key: 'sender_id'

end
