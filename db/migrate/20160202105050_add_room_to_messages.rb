class AddRoomToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :room, index: true, foreign_key: true
  end
end
