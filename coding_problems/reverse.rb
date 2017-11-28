#!/usr/bin/ruby
#
#
#

print "Please enter the string which needs to be reverse : "

string = gets.chomp 

a = string.length - 1

while a >= 0

   print string[a]
   
   a = a - 1

end

puts 

#while a.length >= 0

#  puts 
