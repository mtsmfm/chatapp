# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.chat = App.cable.subscriptions.create "WebNotificationsChannel",
  connected: ->
    console.log 'hoge'
  received: (data) ->
    console.log data
