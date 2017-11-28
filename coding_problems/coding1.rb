#!/usr/bin/ruby
#
#
#

print "What is your name chetta : "

name = gets.chomp.to_i

if name =~ /[0-9]/
  
   puts "Please enter a valid name"
   
   else
   puts name.class
   puts "\nThanks #{name}, you gotta wonderful name"

end





