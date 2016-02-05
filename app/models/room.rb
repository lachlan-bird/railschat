class Room < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :room_users
  has_many :participants, :through => :room_users, :class_name => 'User', :foreign_key => 'user_id'
end
