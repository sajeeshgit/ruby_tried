#!/usr/bin/ruby
#
#
#

count = 0
counter = 0

file = File.new('text.txt', 'w')
file.puts "Hello, how are you?"
file.puts "You need anything from me"
file.puts "Thank you!"
file.close


File.open('text.txt', 'r') do |file|

             file.each_line do |line|

                    word = line.split 
 
                           word.each  do |i|
                            
                                counter += 1
                           end

                          count += 1

                          end
                      puts "The Number of Lines in the file is #{count}"
    
                      puts "The Number of words in the file is #{counter}"

             end






