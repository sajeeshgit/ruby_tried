#!/usr/bin/ruby
#
#
#

a = [2,4,6,1,7,3,9,5,8]


b = a.sort do |i,x|

           i <=> x

    end

puts a.inspect
puts b.inspect           
       

