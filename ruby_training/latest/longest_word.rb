#!/usr/bin/ruby
#
#
#
#

puts "Enter the size of the array:"

n = gets.chomp.to_i


puts "Enter the strings of which you want to find the longest"

array = Array.new(n)


for i in (0..n)

   array[i] =  gets.chomp

end

puts array.inspect



longest = array.inject do |memo,word| 


     if memo.length > word.length

           memo

          else
 
           word

     end
end

puts longest 


 
