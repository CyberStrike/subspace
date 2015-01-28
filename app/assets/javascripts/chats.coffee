# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'ready page:load', ->
  if $('#chat.show')[0]?

    unless window.client?
      window.client = new MessageRocket

    subscribeSuccess = (channel)->
      window.channel = channel
      console.log("Successfully subscribed to channel" + channel)
    subscribeFail = (error) ->
      console.log 'Error: ', error

    client.subscribe( '/games/'+ window.location.pathname.split('/')[2], (message) ->
      console.log(message))
    .then(
      subscribeSuccess(channel), subscribeFail(error))


$(document).on 'ready page:load', ->
  $('#cmd').parent().on 'submit', (event)->
    event.preventDefault()
    $('.chat-item-container').append("<div class='chat-item'><p class='action'>" + $('#cmd').val() + "</p></div>")
    $('#cmd').val('')
    $('.chat-item-container').animate({
      scrollTop: $(".action:last-of-type").offset().top
    }, 2000);
