#!/usr/bin/ruby
#
#
#


print "Enter the size of the array :"
n = gets.chomp.to_i

print "Enter the numbers to the array :"

arr = Array.new(n)


for i in (0..n)

    arr[i] = gets.chomp.to_i

end


print "The array is #{arr.inspect} \n\n"

print "The largest number in an array is : #{arr.max} \n\n\n"



=begin
arr.inject do |v,memo| 

if memo > v 

print memo

else 

print  v

end

end 

=end
 




