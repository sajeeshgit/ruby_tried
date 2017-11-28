#!/usr/bin/ruby
#
#
#

###MAIN FUNCTION######



def main_function(string)

   ###To print the number of characters in the srting###
       
           length =  string.length
           puts "\n The Length of the string \"#{string}\" is :#{length} "

   ###Swap the case to upper/lower case (eg: input: WeLcoMe output: wElCOmE)###  

           swap = string.swapcase 
           puts "\n The String \"#{string}\" after doing a swap is :#{swap}" 
  
   ###Capitalize the first letter of each word (eg: input: welcome output: Welcome)###
           regex = /[A-Z]/           

           if string[0] =~ regex
               
           puts "\n The first letter of string is already Capital letter :#{string} \n"
               
                       else
  
           capital = string.gsub(/[A-Za-z']+/,&:capitalize)                
           puts "\n The string \"#{string}\" after frist letter Capitalize is :#{capital} \n"

           end 

end
                   


####SCRIPT#############




####Message display on the screen####
print "please enter the string : " 

####Taking the Inpit from the user####

string = gets.chomp.to_s


####Checking if the user input is a string or not####
  

special = "?<>',?[]}{=-)(*&^%$#`~{}"
white_space = /^\s$/
regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/

if string =~ regex or string =~ /[0-9]/ or string =~ white_space
     
    puts "Your string contains special charecters / numerals / white space, try something like \"india\" "

  else

    main_function(string)

end
