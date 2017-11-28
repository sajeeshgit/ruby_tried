#!/usr/bin/ruby
#
#

file = File.new('file.txt','w') 

	file.puts "Hi"
	file.print "My name \n"
	file.write "is "
	file << "sajeesh \n"
file.close 


File.open('file.txt','r') do |file|

      while line = file.gets 
      puts "** " + line.chomp + " **"
      end
   
#block

end


File.open('file.txt','r') do |file|

   file.each_line {|line| puts "** #{line.chomp.upcase}  **" }

   end


