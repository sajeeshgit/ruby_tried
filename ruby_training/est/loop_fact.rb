#!/usr/bin/ruby
#
#
#

print "enter the number you want to print till 1 : "

number = gets.chomp.to_i

a = 1
x = 0

    loop  do

             x = x + 1
             a = a * x
             puts a
             break if number == x 
          end

     
    


#puts "The Factorial of the number is : #{a}"










