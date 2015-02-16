class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages_as_sender, class_name: 'Message', foreign_key: 'sender_id'
  has_many :messages_as_recipient, class_name: 'Message', foreign_key: 'recipient_id'

  has_one :commute

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def messages
    messages_as_sender + messages_as_recipient
  end
end
