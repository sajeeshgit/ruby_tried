#!/usr/bin/ruby
#
#
#

print "enter the number you want to print till 1 : "

number = gets.chomp.to_i

a = 1

            until number <= 0

                 a = a * number
                 
                 number = number - 1   
               
            end

puts "The Factorial of the number is : #{a}"










