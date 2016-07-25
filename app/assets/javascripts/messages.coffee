# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.chat = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    console.log data
    $('body').append($('<li>').text(data.message))

$ ->
  $('#form').on 'submit', (e) ->
    App.chat.send
      message: $('#input').val()

    message: $('#input').val('')

    e.preventDefault()
