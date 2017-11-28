#!/usr/bin/ruby
#
#
#


arr = [1, 2, 3, 3]

arr1 = [1, 3, 4, 5, 2, 3, 1, 4, 6, 4, 5, 3, 6, 8, 7, 9, 6, 9, 8]

b = arr.find_all { |e| arr.count(e) == 1 }.uniq

puts b




=begin
a = ["A", "B", "C", "B", "A", "C", "D", "C"]
c= a.select{ |e| a.count(e) > 1 }.uniq
puts c
=end
