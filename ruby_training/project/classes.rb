#!/usr/bin/ruby
#
#
#



class Animal
   def take_noise(noise)
     @noise = noise 
   end
 
   def make_noise 
     @noise
   end

end


animal = Animal.new
animal.take_noise("Moo!")
puts animal.make_noise 
     

animal1 = Animal.new
animal1.take_noise("Quack!")            
puts animal1.make_noise
