#!/usr/bin/ruby
#
#
#

puts "Enter the size of the array you wanna build :"
n = gets.chomp.to_i

puts "Enter #{n} values into your array and press enter after each :"
array = Array.new(0)


for i in 0..n

 array[i] = gets.chomp.to_i 

end

puts "Your array is #{array.inspect}"


ascending = array.sort { |x, y| x <=> y }
puts "\nThe array in Ascending order is #{ascending}\n"


descending = array.sort { |x, y| y <=> x }
puts "\nThe array in Descending order is #{descending}\n\n"


puts "Enter the string of your choice"
str = gets.chomp


puts "GREAT!!! You have entered the string \"#{str}\", Please enter the substring whose index number you want:"
sub = gets.chomp 

jai = str.split("")

    if str.include? sub

         x = sub.split('').last
         hash = Hash[jai.map.with_index.to_a]
         puts "The Index of the Substring is : #{hash[x]}"  
         
       else 

         puts "Please input a substring thats part of #{str}"

  end
