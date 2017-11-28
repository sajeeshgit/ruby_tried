#!/Users/sajeesh/.rvm/rubies/ruby-2.3.3/bin/ruby



def febinocci(n)

         a = 0
 	 b = 1
 
  	 n.times do
 
               temp = a
   	       a = b
	       b = temp + b

 	 end

     return b

end


print "Enter the Number of which you want to find the febinocci :"

n = gets.chomp.to_i



n.times do |i|
 
      result = febinocci(i)

      puts result 

end

