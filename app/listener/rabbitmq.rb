module SinatraApp
  module Listener
    class Rabbitmq
      include Bunny
      include SinatraApp::Services
      def self.run
        con = Bunny.new
        ser = Service.new
        con.start

        channel = con.create_channel
        queue = channel.queue('hello')
        queue.subscribe(block: false) do |_delivery_info, _properties, body|
          ser.message_received
        end
      end
    end
  end
end
