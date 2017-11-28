#!/usr/bin/ruby




count = 0

File.open('trendy.txt', 'r') do |file|
   
                              file.each_line { |line|   count += 1 }
                               puts count 
                             end





