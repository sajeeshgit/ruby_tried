#!/usr/bin/ruby
#
#
#

puts "Enter the number of values you want in array :"
n = gets.chomp.to_i

puts "Enter \"0 to #{n}\" inputs to your array to build the array:"
arr = Array.new(0)


for i in (0..n)

arr[i] = gets.chomp

end


puts arr.inspect










