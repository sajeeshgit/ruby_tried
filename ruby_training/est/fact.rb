#!/usr/bin/ruby
#
#
#

print "enter the number you want to print till 1 : "

number = gets.chomp.to_i

a = 1


for i in 1..number  

    a = a * i

end

puts "The Factorial of the number is : #{a}"










