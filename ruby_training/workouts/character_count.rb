#!/usr/bin/ruby
#

######## Calling Functions ######
$counter1=0;
$counter2=0;

def special_character(x)

   str="`!@#$%^&*()-_=+"
   x.each_char { |y|
                    if str.include? y

				$counter1=$counter1+1
		    end
               }
   
   puts "\n No of spl chars: #$counter1"
   return $counter1
end


def numeric_character(x)

   x.each_char { |z|
                     if z =~ /[0-9]/

				$counter2=$counter2+1
		     end
	       }
    puts "\n No of numberic chars : #$counter2"
    return $counter2
end
     
 

######## Main script ###########################

print "Enter a character of your choice : "

x = gets.chomp

puts "The total number of characters in your word is : #{x.size}"

o = x.size

         if x =~ /[`!@#$%^&*()-_=+]/ and x =~ /[0-9]/

  
                 special_character(x)

                 numeric_character(x)


          else 

                 puts " Null"

          end 

######### calculating the value########

m = $counter1
n = $counter2


s = o - m - n

puts "\n The number of normal characters is : #{s}"

################END##########################
