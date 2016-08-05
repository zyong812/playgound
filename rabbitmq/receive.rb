require 'bunny'

conn = Bunny.new
conn.start

ch = conn.create_channel
q  = ch.queue('hello')

begin
  puts " [*] Waiting for messages. To exit press CTRL+C"
  q.subscribe(:block => true) do |delivery_info, properties, body|
    puts " [x] Received #{body}"
  end
rescue Interrupt => _
  conn.close
  exit(0)
end

