App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    @join($(document).find('[name="room_id"]').val())

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']

  speak: (message, room_id) ->
    @perform 'speak', message: message, room_id: room_id

  join: (room_id) ->
    @perform 'join', room_id: room_id

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13
    App.room.speak event.target.value, $(document).find('[name="room_id"]').val()
    event.target.value = ''
    event.preventDefault()
