#!/usr/bin/ruby
#
#
#

print "enter the size of the array:"

n = gets.chomp.to_i


print "Interset the numbers you want to print the sum in a single line :"

arr = Array.new(n)



for i in (0..n)

   arr[i] = gets.chomp.to_i

end




sum = 0

arr.each  do |i|

    sum += i

end 
 

puts sum



