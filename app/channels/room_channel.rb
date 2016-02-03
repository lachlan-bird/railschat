# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def join(data)
    stream_from "room_channel_#{data['room_id']}"
  end

  def speak(data)
    Message.create! room_id: data['room_id'], user_id: current_user.id, content: data['message']
  end
end
