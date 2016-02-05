class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :participant, :class_name => 'User', :foreign_key => 'user_id'
end
