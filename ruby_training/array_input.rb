#!/usr/bin/ruby
#
#
#

sum = 0

print "Enter the Size of the array: "

n = gets.chomp.to_i


print "Enter #{n} numbers to make your array: "

array = Array.new(n)


for i in (0..n)

   array[i] = gets.chomp.to_i

end


#puts array.inspect 


array.each do |i|

         sum += i

end

puts  "The sum of the array #{array.inspect} is: #{sum}"




