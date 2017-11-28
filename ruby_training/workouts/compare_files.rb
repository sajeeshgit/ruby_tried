#!/usr/bin/ruby
#
#
#

=begin
f1 = File.open('file.txt')
f2 = File.open('file1.txt')

file1lines = f1.readlines 
file2lines = f2.readlines 

puts file1lines

file1lines.each do |file|

    if (!file2lines.include?(file))
   
          puts file
    
    end
 end
=end



array_file = []


File.open("file2.txt", "w") do |result|
   File.open("file.txt", "r") do |master|
        master.each_line do |line|

              array_file << line.chomp

        end
   end



  File.open("file1.txt", "r") do |slave|
        slave.each_line do |line|
      
             if !array_file.include? line.chomp 
                result.puts line.chomp

          end
     end
end
end
