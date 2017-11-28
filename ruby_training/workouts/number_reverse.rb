#!/Users/sajeesh/.rvm/rubies/ruby-2.3.3/bin/ruby



print  "Enter the number of which you want to print the number in reverse: "

x = gets.chomp.to_i


for i in 1..x 

   puts i
  
end


print  "Enter the number of which you want to print the number in reverse: "

y = gets.chomp.to_i


y.downto(1) do |i|

   puts i

end


