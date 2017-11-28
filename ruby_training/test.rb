#!/usr/bin/ruby
#
#
#

def calculate_sum(arr)
  sum = 0
  arr.each do |item|
    sum += item
  end
 return  sum
end

puts calculate_sum

@items1 = [12, 34, 55]
@items2 = [45, 90, 2]
@items3 = [99, 22, 31]

puts "items1 = #{calculate_sum(@items1)}"
puts "items2 = #{calculate_sum(@items2)}"
puts "items3 = #{calculate_sum(@items3)}"





