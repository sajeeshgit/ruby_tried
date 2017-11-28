#!/usr/bin/ruby
#
#
#

array = Array.new(n)
puts "Enter the size of the array"

n = gets.chomp.to_i

puts "Enter the digits to the array"

for i in (0..n)

array[i] = gets.chomp.to_i

end

puts array.inspect



arra = [2, 4, 5, 3, 5, 1, 6, 3, 4, 5, 8, 6, 6, 7, 8, 9, 9, 9, 4, 3]

hash = Hash.new(0)

arra.each do |i|


             hash[i] += 1

        end 

puts hash 

hash.each { |k, v| puts k if v == hash.values.max }

puts "================================="

puts hash.key(hash.values.max)













