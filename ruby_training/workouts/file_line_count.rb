#!/usr/bin/ruby
#
#
#


file_e = "filename.txt"
count = 0
count2 = 0
### Opening the file for reading #######

File.open('filename.txt', 'r')  do |file1| 

file1.each_line do |line|

                     y = line.split("")

                    if line != 0
           
                       count = count + 1
          
                     end
                   
                     y.each do |x|

                          count2 = count2 + 1

                     end

         
                end

puts "\nThe Number of Lines in the file \"#{file_e}\" is #{count} \n\n"
puts "\nThe Number of words in the file \"#{file_e}\" is #{count2} \n\n"

end

#end
# puts count 
 
   














=begin
do |file|



                                count = file.read.count("\n") 
      
     #if file.gets != 0      
     puts count
 
    # puts file.upcase 
      #counter +=  1
    
       end
=end


