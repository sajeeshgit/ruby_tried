#!/usr/bin/ruby
#
#
#

puts "Enter the size of the array you want"
n = gets.chomp.to_i

puts "Enter the digits into your array"
array = Array.new(n)

for i in (0..n)

array[i] = gets.chomp.to_i

end

d = array.sort  { |x,y| x <=> y }
puts "================"
puts d[-1]



   

