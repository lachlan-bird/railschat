class CreateRoomMessagesJoin < ActiveRecord::Migration[5.0]
  def change
    create_table :room_messages_joins do |t|
      t.references :room, index: true, foreign_key: true
      t.references :message, index: true, foreign_key: true
    end
  end
end
