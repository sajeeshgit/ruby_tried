#!/usr/bin/ruby
#
#
#

class Animal
   
       def sound_input(noise)
     
          @noise = noise
     
       end

       def sound 

           @noise 

       end
end


animal1 = Animal.new
animal1.sound_input("Moo!")

puts animal1.sound


animal2 = Animal.new
animal2.sound_input("Boww!!!")

puts animal2.sound
