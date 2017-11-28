#!/usr/bin/ruby
#
#
#



print  "Enter the String you want to reverse: "

n = gets.chomp 

len = n.length - 1


while len >= 0

     print  n[len] 
      len -= 1

end

puts 
