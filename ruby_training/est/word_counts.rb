#!/usr/bin/ruby
#
#

counter = 0

rom = File.open('file.txt', 'r')


rom.each_line  do |a|

                 b = a.split

                     b.each { |x| counter += 1 }    

end

puts counter
