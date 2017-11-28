#!/usr/bin/ruby
#
#
#

class Animal

   def input(noise)
     
       @int = noise

   end
 
   def name_noise

       @int

   end

end


animal1 = Animal.new
animal1.input("Meow!!!")
puts  animal1.name_noise


animal2 = Animal.new
animal2.input("Bow!!!")
puts animal2.name_noise



