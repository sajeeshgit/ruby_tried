def shut_down
  puts "\nShutting down gracefully..."
  sleep 1
end

puts "I have PID #{Process.pid}"
#n = gets.chomp 

Kernel.trap('INT') {

n = gets.chomp

}

#Trap ^c

Signal.trap("INT") { 
  shut_down 
  exit
}

# Trap `Kill `

Signal.trap("TERM") {
  shut_down
  exit
}
