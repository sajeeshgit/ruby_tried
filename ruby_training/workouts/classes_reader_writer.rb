#!/usr/bin/ruby
#
#
#

class Animal
       
       attr_accessor :name
   
       attr_writer :color 

       attr_reader :legs, :type

       def sound_input(noise)
     
          @noise = noise
     
       end

       def sound 

           @noise 

       end

       def color 
     
            @color 
       end

       def legs=(value) 
         
         @legs = value
      
       end

       def type=(value)
   
         @type = value

       end
end






animal1 = Animal.new
animal1.sound_input("Moo!")
puts animal1.sound

animal1.name = ("Browmie")
puts animal1.name


animal1.color = ("black")
puts animal1.color 

animal1.legs = (4)
puts animal1.legs

animal1.type = ("Mammal")
puts animal1.type


animal2 = Animal.new
animal2.sound_input("Boww!!!")

puts animal2.sound
