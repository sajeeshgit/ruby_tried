#!/usr/bin/ruby
#
#
#

puts "Enter the size of the array :"
n = gets.chomp.to_i


puts "Enter the inputs to your array :"
arr = Array.new(0)


for i in (0..n)


arr[i] = gets.chomp.to_i

end

sum = 0

arr.each { |i| sum += i }


puts "The sum of the elements in the array is: #{sum}"
