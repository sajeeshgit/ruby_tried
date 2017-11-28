#!/usr/bin/ruby
#
#
#


print  "Enter the string which you want to reverse:"

string = gets.chomp 


len = string.length - 1


while len >= 0

 print string[len]

 len = len - 1

end

puts 


puts string.reverse 


