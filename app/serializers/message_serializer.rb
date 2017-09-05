# == Schema Information
#
# Table name: messages
#
#  id            :integer          not null, primary key
#  body          :text(65535)
#  chat_group_id :integer
#  user_id       :integer
#  image         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class MessageSerializer < ActiveModel::Serializer
  include ActiveModel::Serialization

  attributes :id, :body, :image, :created_at, :updated_at, :user_name

  def user_name
    object.user.present? object.user.name || 'no-name'
  end

  def user
    object.user
  end
end