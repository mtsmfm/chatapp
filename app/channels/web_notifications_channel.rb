class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    puts 'hi'
    stream_from "web_notifications"
  end
end
