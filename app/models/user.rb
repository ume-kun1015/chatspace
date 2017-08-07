class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :chat_group_users
  has_many :chat_groups, through: :chat_group_users
  has_many :messages

  validates :name,  presence: true
  validates :email, uniqueness: true
end
