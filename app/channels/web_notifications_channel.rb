class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notifications"
  end

  def receive(data)
    ActionCable.server.broadcast "web_notifications", data
  end
end
