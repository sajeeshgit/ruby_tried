#!/usr/bin/ruby
#
#
#
p = "<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>"

x = 1 ### declaring a global variable ###

print "Enter the Number of rows you want for your PYRAMID : "

a = gets.chomp

while a !~ /^[1-9]\d*$/
  
      puts "\n\nInput_data can't be 0 or a negative integer or in decimal format or alphanumeric. \n\nPlease input appropriate input_data as a +ve\n "
      a = gets.chomp     
end

n = a.to_i

print "Enter a letter/number/symbol to design your PERAMID : "

m = gets.chomp  #User input for Pyramid blocks#

puts "\n#{p}"
puts "#{p}\n\n"

puts "The Pyramid you want to build is \n\n"
for i in (1..n)  do

      space = " " * (n-i)        ### creating space to align the blocks ####
      dots  = "#{m}" * (i*2 - 1) ### calculating the number of blocks for making the Pyramid ###
      
      puts space + dots + space  ### Combing both space and block to form the Pyramid ###

end

puts "\n#{p}"
puts "#{p}"


puts "\nThe Pyramid in Reverse mode \n\n"
n.downto(1) do |i|


    space = " " * (n-i)
    dots  = "#{m}" * (2*i - 1)
    
    puts space + dots + space

end

puts "\n#{p}"
puts "#{p}\n\n"

puts "Pyramid with the given number #{n}"

for i in (1..n)

    for x in (1..i)

    print x

    end

puts 

end

puts "\n#{p}"
puts "#{p}\n\n"

puts "Finding the Factorail of the User input number\n\n"

for i in (1..n) do

x  = x * i

end

puts "The Factorial of the number #{n} is : #{x}\n\n"
 
