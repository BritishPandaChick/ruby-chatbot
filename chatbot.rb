require 'socket'
<<<<<<< HEAD

=======
 
>>>>>>> ping-pong
server  = 'teepee.freenode.net'
port    = 6667
socket = TCPSocket.open(server, port)

nickname = 'SkillcrushBotOMG'
channel  = '#BananaStand123'
<<<<<<< HEAD

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"

=======
 
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
 
>>>>>>> ping-pong
while message = socket.gets do
  puts message

  if message.match('^PING :')
    server = message.split(':').last
    puts "PONG #{server}"
    socket.puts "PONG #{server}"
  end
end