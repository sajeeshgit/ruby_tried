#!/usr/bin/ruby
#
#
#

print "Enter the number you want the sum of : "

num = gets.chomp.to_i


n = 0

sum = (1..num).inject {|memo,n| memo + n }


puts " The sum of numbers from 1..#{num} is #{sum} "


  


