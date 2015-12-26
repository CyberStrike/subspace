# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ready page:load', ->
  if $('#chats.show')[0]?

    chatId = window.location.pathname.split('/')[2]

    unless window.client?
      window.client = new MessageRocket


    recieveMessage = (message) ->
      console.log message
      $('.chat-item-container')
      .append("<div class='chat-item'><p class='action'>" + message.data + "</p></div>")
      .animate({scrollTop: $(".action:last-of-type").offset().top}, 2000)

    subscribeSuccess = (channel) ->
      window.channel = channel
      console.log("Successfully subscribed to channel" + channel)
    subscribeFail = (error) ->
      console.log 'Error: ', error

    client.subscribe(
      '/chats/'+ chatId,
      (message) -> recieveMessage(message))
    .then(
      (channel) -> subscribeSuccess(channel),
      (error) -> subscribeFail(error))


$(document).on 'ready page:load', ->
  $('#cmd').parent().on 'submit', (event)->
    event.preventDefault()
    $('#cmd').val('')
