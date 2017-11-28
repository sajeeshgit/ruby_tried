#!/usr/bin/ruby
#
#
#

require 'prime'

class Calculation
  
  def initialize(a, b)
        @x = a.to_i
        @y = b.to_i
        @line1 = "========================================================================================"
  end

  def integer_comparison
      puts @line1
      puts "B) Checking the greatest Integer \n\n"
      if @x > @y
         puts "#{@x} is greater than #{@y} \n"
      else
         puts "#{@y} is greater than #{@x} \n"
      end
      puts @line1
  end

  def integer_operarion
       puts "C) Doing the Math operations on the Integers \n\n"
       hold = 0       
       puts "Please select the Operator you want from below Menu"
         while hold != 'q' do 
           print <<MENU
           1.Add
           2.Subtract
           3.Multiply
           4.Divide
MENU
          
          hold = gets.chomp.to_i
          if hold == 1
             puts "You have selected for Addition"
             a = @x + @y
             puts "The Sum of two numbers is :#{a}"
             puts @line1
             puts "Please enter \"q\" if you want to exit or Type \"Menu\" for menu again :) \n"
             hold = gets.chomp
          elsif hold == 2
             puts "You have selected for Subtraction"
             b = @x - @y
             puts "The difference between two numbers is :#{b}"
	     puts @line1
             puts "Please enter \"q\" if you want to exit or Type \"Menu\" for menu again :) \n"
             hold = gets.chomp
          elsif hold == 3
             puts "You have selected for Multiplication"
             c = @x * @y
             puts "The product of two numbers is :#{c}"
  	     puts @line1
             puts "Please enter \"q\" if you want to exit or Type \"Menu\" for menu again :) \n"
             hold = gets.chomp
          elsif hold == 4
             puts "You have selected for Division"
             d = @x / @y
             puts "The Division of two numbers is :#{d}"
	     puts @line1
             puts "Please enter \"q\" if you want to exit or Type \"Menu\" for menu again :) \n"
             hold = gets.chomp
          end  
      end
             puts @line1
   end

   def integer_prime
       puts "D) Checking for prime numbers in Integers \n\n"
       if Prime.prime?(@x) 
         puts "#{@x} is a  Prime numbers"
       else
         puts "#{@x} is not a Prime number"
       end
 
       if Prime.prime?(@y)
         puts "#{@y} is a  Prime numbers \n"
       else
         puts "#{@y} is not a Prime number \n"
       end        
       puts @line1   
  end
  
  def integer_swap
      puts "E) Swaping the Integers \n\n"
      puts "Integer's before swap is #{@x} and #{@y}"
      c = @x
      @x = @y
      @y = c
      puts "Integer's after swap is #{@x} and #{@y} \n"
      puts @line1
  end  

end

puts "Enter your First Digit:"
a = gets.chomp

puts "Enter your Second Digit:"
b = gets.chomp

regex = /[0-9]/
if a =~ regex and b =~ regex
 puts "========================================================================================"
 puts "A) Checking if a Integer is valid or not \n\n"
 puts "The Integers #{a} and #{b} are valid Integers \n"
else
 puts "========================================================================================"
 puts "A) Checking if a Integer is valid or not \n\n"
 puts "Please enter a valid Integer, eg :\"0-9\" "
 puts "========================================================================================"
 exit 1
end 

instance = Calculation.new(a, b)
instance.integer_comparison
instance.integer_operarion
instance.integer_prime
instance.integer_swap
